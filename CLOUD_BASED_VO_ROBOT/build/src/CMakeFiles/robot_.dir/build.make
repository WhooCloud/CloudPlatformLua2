# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build

# Include any dependencies generated for this target.
include src/CMakeFiles/robot_.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/robot_.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/robot_.dir/flags.make

src/CMakeFiles/robot_.dir/robot_.cpp.o: src/CMakeFiles/robot_.dir/flags.make
src/CMakeFiles/robot_.dir/robot_.cpp.o: ../src/robot_.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/robot_.dir/robot_.cpp.o"
	cd /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build/src && g++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/robot_.dir/robot_.cpp.o -c /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/src/robot_.cpp

src/CMakeFiles/robot_.dir/robot_.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/robot_.dir/robot_.cpp.i"
	cd /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build/src && g++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/src/robot_.cpp > CMakeFiles/robot_.dir/robot_.cpp.i

src/CMakeFiles/robot_.dir/robot_.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/robot_.dir/robot_.cpp.s"
	cd /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build/src && g++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/src/robot_.cpp -o CMakeFiles/robot_.dir/robot_.cpp.s

src/CMakeFiles/robot_.dir/robot_.cpp.o.requires:
.PHONY : src/CMakeFiles/robot_.dir/robot_.cpp.o.requires

src/CMakeFiles/robot_.dir/robot_.cpp.o.provides: src/CMakeFiles/robot_.dir/robot_.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/robot_.dir/build.make src/CMakeFiles/robot_.dir/robot_.cpp.o.provides.build
.PHONY : src/CMakeFiles/robot_.dir/robot_.cpp.o.provides

src/CMakeFiles/robot_.dir/robot_.cpp.o.provides.build: src/CMakeFiles/robot_.dir/robot_.cpp.o

# Object files for target robot_
robot__OBJECTS = \
"CMakeFiles/robot_.dir/robot_.cpp.o"

# External object files for target robot_
robot__EXTERNAL_OBJECTS =

../lib/librobot_.so: src/CMakeFiles/robot_.dir/robot_.cpp.o
../lib/librobot_.so: src/CMakeFiles/robot_.dir/build.make
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_videostab.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_ts.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_superres.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_stitching.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_ocl.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_gpu.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_contrib.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_photo.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_legacy.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_video.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_objdetect.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_ml.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_calib3d.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_features2d.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_highgui.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_imgproc.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_flann.so.2.4.8
../lib/librobot_.so: /usr/lib/x86_64-linux-gnu/libopencv_core.so.2.4.8
../lib/librobot_.so: src/CMakeFiles/robot_.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared library ../../lib/librobot_.so"
	cd /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/robot_.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/robot_.dir/build: ../lib/librobot_.so
.PHONY : src/CMakeFiles/robot_.dir/build

src/CMakeFiles/robot_.dir/requires: src/CMakeFiles/robot_.dir/robot_.cpp.o.requires
.PHONY : src/CMakeFiles/robot_.dir/requires

src/CMakeFiles/robot_.dir/clean:
	cd /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build/src && $(CMAKE_COMMAND) -P CMakeFiles/robot_.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/robot_.dir/clean

src/CMakeFiles/robot_.dir/depend:
	cd /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/src /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build/src /home/ubuntu/CloudPlatformLua/CLOUD_BASED_VO_ROBOT/build/src/CMakeFiles/robot_.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/robot_.dir/depend
