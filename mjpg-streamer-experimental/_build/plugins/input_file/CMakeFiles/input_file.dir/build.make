# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /home/yahei/mjpg-streamer/mjpg-streamer-experimental

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build

# Include any dependencies generated for this target.
include plugins/input_file/CMakeFiles/input_file.dir/depend.make

# Include the progress variables for this target.
include plugins/input_file/CMakeFiles/input_file.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/input_file/CMakeFiles/input_file.dir/flags.make

plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o: plugins/input_file/CMakeFiles/input_file.dir/flags.make
plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o: ../plugins/input_file/input_file.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o"
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/input_file.dir/input_file.c.o   -c /home/yahei/mjpg-streamer/mjpg-streamer-experimental/plugins/input_file/input_file.c

plugins/input_file/CMakeFiles/input_file.dir/input_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/input_file.dir/input_file.c.i"
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yahei/mjpg-streamer/mjpg-streamer-experimental/plugins/input_file/input_file.c > CMakeFiles/input_file.dir/input_file.c.i

plugins/input_file/CMakeFiles/input_file.dir/input_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/input_file.dir/input_file.c.s"
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_file && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yahei/mjpg-streamer/mjpg-streamer-experimental/plugins/input_file/input_file.c -o CMakeFiles/input_file.dir/input_file.c.s

plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o.requires:

.PHONY : plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o.requires

plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o.provides: plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o.requires
	$(MAKE) -f plugins/input_file/CMakeFiles/input_file.dir/build.make plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o.provides.build
.PHONY : plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o.provides

plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o.provides.build: plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o


# Object files for target input_file
input_file_OBJECTS = \
"CMakeFiles/input_file.dir/input_file.c.o"

# External object files for target input_file
input_file_EXTERNAL_OBJECTS =

plugins/input_file/input_file.so: plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o
plugins/input_file/input_file.so: plugins/input_file/CMakeFiles/input_file.dir/build.make
plugins/input_file/input_file.so: plugins/input_file/CMakeFiles/input_file.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library input_file.so"
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_file && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/input_file.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/input_file/CMakeFiles/input_file.dir/build: plugins/input_file/input_file.so

.PHONY : plugins/input_file/CMakeFiles/input_file.dir/build

plugins/input_file/CMakeFiles/input_file.dir/requires: plugins/input_file/CMakeFiles/input_file.dir/input_file.c.o.requires

.PHONY : plugins/input_file/CMakeFiles/input_file.dir/requires

plugins/input_file/CMakeFiles/input_file.dir/clean:
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_file && $(CMAKE_COMMAND) -P CMakeFiles/input_file.dir/cmake_clean.cmake
.PHONY : plugins/input_file/CMakeFiles/input_file.dir/clean

plugins/input_file/CMakeFiles/input_file.dir/depend:
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yahei/mjpg-streamer/mjpg-streamer-experimental /home/yahei/mjpg-streamer/mjpg-streamer-experimental/plugins/input_file /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_file /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/input_file/CMakeFiles/input_file.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/input_file/CMakeFiles/input_file.dir/depend

