/**
 * 演示 epoll 通信模型，epoll_server.cpp
 * zhangyl 2019.03.16
 */
#include <sys/types.h> 
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/epoll.h>
#include <poll.h>
#include <iostream>
#include <string.h>
#include <vector>
#include <errno.h>

int main(int argc, char* argv[])
{
    //创建一个侦听socket
    int listenfd = socket(AF_INET, SOCK_STREAM, 0);
    if (listenfd == -1)
    {
        std::cout << "create listen socket error." << std::endl;
        return -1;
    }

    //将侦听socket设置为非阻塞的
    int oldSocketFlag = fcntl(listenfd, F_GETFL, 0);
    int newSocketFlag = oldSocketFlag | O_NONBLOCK;
    if (fcntl(listenfd, F_SETFL,  newSocketFlag) == -1)
    {
        close(listenfd);
        std::cout << "set listenfd to nonblock error." << std::endl;
        return -1;
    }

    //初始化服务器地址
    struct sockaddr_in bindaddr;
    bindaddr.sin_family = AF_INET;
    bindaddr.sin_addr.s_addr = htonl(INADDR_ANY);
    bindaddr.sin_port = htons(3000);
    if (bind(listenfd, (struct sockaddr *)&bindaddr, sizeof(bindaddr)) == -1)
    {
        std::cout << "bind listen socket error." << std::endl;
        close(listenfd);
        return -1;
    }

    //启动侦听
    if (listen(listenfd, SOMAXCONN) == -1)
    {
        std::cout << "listen error." << std::endl;
        close(listenfd);
        return -1;
    }

    //复用地址和端口号
    int on = 1;
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEADDR, (char *)&on, sizeof(on));
    setsockopt(listenfd, SOL_SOCKET, SO_REUSEPORT, (char *)&on, sizeof(on));

    //创建epollfd
    int epollfd = epoll_create(1);
    if (epollfd == -1)
    {
        std::cout << "create epollfd error." << std::endl;
        close(listenfd);
        return -1;
    }

    epoll_event listen_fd_event;
    listen_fd_event.events = POLLIN;
    listen_fd_event.data.fd = listenfd;

    //将侦听socket绑定到epollfd上去
    if(epoll_ctl(epollfd, EPOLL_CTL_ADD, listenfd, &listen_fd_event) == -1)
    {
        std::cout << "epoll_ctl error." << std::endl;
        close(listenfd);
        return -1;
    }

    int n;
    while (true)
    {       
        epoll_event epoll_events[1024];
        n = epoll_wait(epollfd, epoll_events, 1024, 1000);
        if (n < 0)
        {
            //被信号中断
            if (errno == EINTR)
                continue;

            //出错，退出
            break;
        }
        else if (n == 0)
        {
            //超时，继续
            continue;
        }

        for (size_t i = 0; i < n; ++i)
        {
            // 事件可读
            if (epoll_events[i].events & POLLIN)
            {
                if (epoll_events[i].data.fd == listenfd)
                {
                    //侦听socket，接受新连接
                    struct sockaddr_in clientaddr;
                    socklen_t clientaddrlen = sizeof(clientaddr);
                    //接受客户端连接, 并加入到fds集合中
                    int clientfd = accept(listenfd, (struct sockaddr *)&clientaddr, &clientaddrlen);
                    if (clientfd != -1)
                    {
                        //将客户端socket设置为非阻塞的
                        int oldSocketFlag = fcntl(clientfd, F_GETFL, 0);
                        int newSocketFlag = oldSocketFlag | O_NONBLOCK;
                        if (fcntl(clientfd, F_SETFL,  newSocketFlag) == -1)
                        {
                            close(clientfd);
                            std::cout << "set clientfd to nonblock error." << std::endl;                        
                        }
                        else
                        {
                            epoll_event client_fd_event;
                            client_fd_event.events = POLLIN;
                            client_fd_event.data.fd = clientfd;                         
                            if(epoll_ctl(epollfd, EPOLL_CTL_ADD, clientfd, &client_fd_event) != -1)
                            {
                                std::cout << "new client accepted, clientfd: " << clientfd << std::endl;
                            }
                            else
                            {
                                std::cout << "add client fd to epollfd error." << std::endl;
                                close(clientfd);                            
                            }
                        }       
                    }
                }
                else 
                {
                    //普通clientfd,收取数据
                    char buf[64] = { 0 };
                    int m = recv(epoll_events[i].data.fd, buf, 64, 0);
                    if (m == 0)
                    {
                        //对端关闭了连接，从epollfd上移除clientfd
                        if(epoll_ctl(epollfd, EPOLL_CTL_DEL, epoll_events[i].data.fd, NULL) != -1)
                        {
                            std::cout << "client disconnected, clientfd: " << epoll_events[i].data.fd << std::endl;
                        }
                        close(epoll_events[i].data.fd);
                    }
                    else if (m < 0)
                    {                                           
                        //出错，从epollfd上移除clientfd
                        if (errno != EWOULDBLOCK && errno != EINTR)
                        {
                            if(epoll_ctl(epollfd, EPOLL_CTL_DEL, epoll_events[i].data.fd, NULL) != -1)
                            {
                                std::cout << "client disconnected, clientfd: " << epoll_events[i].data.fd << std::endl;
                            }
                            close(epoll_events[i].data.fd);
                        }
                    }
                    else
                    {
                        //正常收到数据
                        std::cout << "recv from client: " << buf << ", clientfd: " << epoll_events[i].data.fd << std::endl;
                    }
                }
            }
            else if (epoll_events[i].events & POLLERR)
            {
                //TODO: 暂且不处理
            }

        }// end  outer-for-loop
    }// end  while-loop


    //关闭侦听socket
    //（理论上应该关闭包括所有clientfd在内的fd，但这里只是为了演示问题，就不写额外的代码来处理啦）
    close(listenfd);            

    return 0;
}