# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build

# Include any dependencies generated for this target.
include CMakeFiles/Log.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Log.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Log.dir/flags.make

CMakeFiles/Log.dir/Log.cpp.o: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/Log.cpp.o: ../Log.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Log.dir/Log.cpp.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Log.dir/Log.cpp.o -c /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/Log.cpp

CMakeFiles/Log.dir/Log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/Log.cpp.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/Log.cpp > CMakeFiles/Log.dir/Log.cpp.i

CMakeFiles/Log.dir/Log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/Log.cpp.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/Log.cpp -o CMakeFiles/Log.dir/Log.cpp.s

CMakeFiles/Log.dir/console_appender.cpp.o: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/console_appender.cpp.o: ../console_appender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Log.dir/console_appender.cpp.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Log.dir/console_appender.cpp.o -c /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/console_appender.cpp

CMakeFiles/Log.dir/console_appender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/console_appender.cpp.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/console_appender.cpp > CMakeFiles/Log.dir/console_appender.cpp.i

CMakeFiles/Log.dir/console_appender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/console_appender.cpp.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/console_appender.cpp -o CMakeFiles/Log.dir/console_appender.cpp.s

CMakeFiles/Log.dir/file_appender.cpp.o: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/file_appender.cpp.o: ../file_appender.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/Log.dir/file_appender.cpp.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Log.dir/file_appender.cpp.o -c /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/file_appender.cpp

CMakeFiles/Log.dir/file_appender.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/file_appender.cpp.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/file_appender.cpp > CMakeFiles/Log.dir/file_appender.cpp.i

CMakeFiles/Log.dir/file_appender.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/file_appender.cpp.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/file_appender.cpp -o CMakeFiles/Log.dir/file_appender.cpp.s

CMakeFiles/Log.dir/log_stream.cpp.o: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/log_stream.cpp.o: ../log_stream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/Log.dir/log_stream.cpp.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Log.dir/log_stream.cpp.o -c /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/log_stream.cpp

CMakeFiles/Log.dir/log_stream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/log_stream.cpp.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/log_stream.cpp > CMakeFiles/Log.dir/log_stream.cpp.i

CMakeFiles/Log.dir/log_stream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/log_stream.cpp.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/log_stream.cpp -o CMakeFiles/Log.dir/log_stream.cpp.s

CMakeFiles/Log.dir/logger.cpp.o: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/logger.cpp.o: ../logger.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/Log.dir/logger.cpp.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Log.dir/logger.cpp.o -c /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/logger.cpp

CMakeFiles/Log.dir/logger.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/logger.cpp.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/logger.cpp > CMakeFiles/Log.dir/logger.cpp.i

CMakeFiles/Log.dir/logger.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/logger.cpp.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/logger.cpp -o CMakeFiles/Log.dir/logger.cpp.s

CMakeFiles/Log.dir/main.cpp.o: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/Log.dir/main.cpp.o"
	/bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Log.dir/main.cpp.o -c /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/main.cpp

CMakeFiles/Log.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/main.cpp.i"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/main.cpp > CMakeFiles/Log.dir/main.cpp.i

CMakeFiles/Log.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/main.cpp.s"
	/bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/main.cpp -o CMakeFiles/Log.dir/main.cpp.s

# Object files for target Log
Log_OBJECTS = \
"CMakeFiles/Log.dir/Log.cpp.o" \
"CMakeFiles/Log.dir/console_appender.cpp.o" \
"CMakeFiles/Log.dir/file_appender.cpp.o" \
"CMakeFiles/Log.dir/log_stream.cpp.o" \
"CMakeFiles/Log.dir/logger.cpp.o" \
"CMakeFiles/Log.dir/main.cpp.o"

# External object files for target Log
Log_EXTERNAL_OBJECTS =

Log: CMakeFiles/Log.dir/Log.cpp.o
Log: CMakeFiles/Log.dir/console_appender.cpp.o
Log: CMakeFiles/Log.dir/file_appender.cpp.o
Log: CMakeFiles/Log.dir/log_stream.cpp.o
Log: CMakeFiles/Log.dir/logger.cpp.o
Log: CMakeFiles/Log.dir/main.cpp.o
Log: CMakeFiles/Log.dir/build.make
Log: CMakeFiles/Log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable Log"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Log.dir/build: Log

.PHONY : CMakeFiles/Log.dir/build

CMakeFiles/Log.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Log.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Log.dir/clean

CMakeFiles/Log.dir/depend:
	cd /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build /home/wujing/code/CPlusPlusProject/operator/cin_cout/Log/build/CMakeFiles/Log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Log.dir/depend
