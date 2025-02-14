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
include plugins/output_viewer/CMakeFiles/output_viewer.dir/depend.make

# Include the progress variables for this target.
include plugins/output_viewer/CMakeFiles/output_viewer.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/output_viewer/CMakeFiles/output_viewer.dir/flags.make

plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o: plugins/output_viewer/CMakeFiles/output_viewer.dir/flags.make
plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o: ../plugins/output_viewer/output_viewer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o"
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_viewer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/output_viewer.dir/output_viewer.c.o   -c /home/yahei/mjpg-streamer/mjpg-streamer-experimental/plugins/output_viewer/output_viewer.c

plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/output_viewer.dir/output_viewer.c.i"
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_viewer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yahei/mjpg-streamer/mjpg-streamer-experimental/plugins/output_viewer/output_viewer.c > CMakeFiles/output_viewer.dir/output_viewer.c.i

plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/output_viewer.dir/output_viewer.c.s"
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_viewer && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yahei/mjpg-streamer/mjpg-streamer-experimental/plugins/output_viewer/output_viewer.c -o CMakeFiles/output_viewer.dir/output_viewer.c.s

plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o.requires:

.PHONY : plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o.requires

plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o.provides: plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o.requires
	$(MAKE) -f plugins/output_viewer/CMakeFiles/output_viewer.dir/build.make plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o.provides.build
.PHONY : plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o.provides

plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o.provides.build: plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o


# Object files for target output_viewer
output_viewer_OBJECTS = \
"CMakeFiles/output_viewer.dir/output_viewer.c.o"

# External object files for target output_viewer
output_viewer_EXTERNAL_OBJECTS =

plugins/output_viewer/output_viewer.so: plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o
plugins/output_viewer/output_viewer.so: plugins/output_viewer/CMakeFiles/output_viewer.dir/build.make
plugins/output_viewer/output_viewer.so: /usr/lib/arm-linux-gnueabihf/libSDLmain.a
plugins/output_viewer/output_viewer.so: /usr/lib/arm-linux-gnueabihf/libSDL.so
plugins/output_viewer/output_viewer.so: /usr/lib/arm-linux-gnueabihf/libjpeg.so
plugins/output_viewer/output_viewer.so: plugins/output_viewer/CMakeFiles/output_viewer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library output_viewer.so"
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_viewer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/output_viewer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/output_viewer/CMakeFiles/output_viewer.dir/build: plugins/output_viewer/output_viewer.so

.PHONY : plugins/output_viewer/CMakeFiles/output_viewer.dir/build

plugins/output_viewer/CMakeFiles/output_viewer.dir/requires: plugins/output_viewer/CMakeFiles/output_viewer.dir/output_viewer.c.o.requires

.PHONY : plugins/output_viewer/CMakeFiles/output_viewer.dir/requires

plugins/output_viewer/CMakeFiles/output_viewer.dir/clean:
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_viewer && $(CMAKE_COMMAND) -P CMakeFiles/output_viewer.dir/cmake_clean.cmake
.PHONY : plugins/output_viewer/CMakeFiles/output_viewer.dir/clean

plugins/output_viewer/CMakeFiles/output_viewer.dir/depend:
	cd /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yahei/mjpg-streamer/mjpg-streamer-experimental /home/yahei/mjpg-streamer/mjpg-streamer-experimental/plugins/output_viewer /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_viewer /home/yahei/mjpg-streamer/mjpg-streamer-experimental/_build/plugins/output_viewer/CMakeFiles/output_viewer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/output_viewer/CMakeFiles/output_viewer.dir/depend

