# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /home/will/Desktop/clion/bin/cmake/linux/aarch64/bin/cmake

# The command to remove a file.
RM = /home/will/Desktop/clion/bin/cmake/linux/aarch64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/will/catkin_ws/src/autotarget

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/will/catkin_ws/src/autotarget/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/circle.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/circle.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/circle.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/circle.dir/flags.make

CMakeFiles/circle.dir/src/circle.cpp.o: CMakeFiles/circle.dir/flags.make
CMakeFiles/circle.dir/src/circle.cpp.o: /home/will/catkin_ws/src/autotarget/src/circle.cpp
CMakeFiles/circle.dir/src/circle.cpp.o: CMakeFiles/circle.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/will/catkin_ws/src/autotarget/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/circle.dir/src/circle.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/circle.dir/src/circle.cpp.o -MF CMakeFiles/circle.dir/src/circle.cpp.o.d -o CMakeFiles/circle.dir/src/circle.cpp.o -c /home/will/catkin_ws/src/autotarget/src/circle.cpp

CMakeFiles/circle.dir/src/circle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/circle.dir/src/circle.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/will/catkin_ws/src/autotarget/src/circle.cpp > CMakeFiles/circle.dir/src/circle.cpp.i

CMakeFiles/circle.dir/src/circle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/circle.dir/src/circle.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/will/catkin_ws/src/autotarget/src/circle.cpp -o CMakeFiles/circle.dir/src/circle.cpp.s

# Object files for target circle
circle_OBJECTS = \
"CMakeFiles/circle.dir/src/circle.cpp.o"

# External object files for target circle
circle_EXTERNAL_OBJECTS =

devel/lib/autotarget/circle: CMakeFiles/circle.dir/src/circle.cpp.o
devel/lib/autotarget/circle: CMakeFiles/circle.dir/build.make
devel/lib/autotarget/circle: /home/will/catkin_ws/devel/.private/mavros/lib/libmavros.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libGeographic.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libdiagnostic_updater.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libeigen_conversions.so
devel/lib/autotarget/circle: /usr/lib/liborocos-kdl.so
devel/lib/autotarget/circle: /home/will/catkin_ws/devel/.private/libmavconn/lib/libmavconn.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libclass_loader.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libPocoFoundation.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libdl.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libroslib.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/librospack.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libpython3.8.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libboost_program_options.so.1.71.0
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libtinyxml2.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libtf2_ros.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libactionlib.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libmessage_filters.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libroscpp.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libpthread.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libboost_chrono.so.1.71.0
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libboost_filesystem.so.1.71.0
devel/lib/autotarget/circle: /opt/ros/noetic/lib/librosconsole.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/librosconsole_log4cxx.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/librosconsole_backend_interface.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/liblog4cxx.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libboost_regex.so.1.71.0
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libxmlrpcpp.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libtf2.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libroscpp_serialization.so
devel/lib/autotarget/circle: /opt/ros/noetic/lib/librostime.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libboost_date_time.so.1.71.0
devel/lib/autotarget/circle: /opt/ros/noetic/lib/libcpp_common.so
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libboost_system.so.1.71.0
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libboost_thread.so.1.71.0
devel/lib/autotarget/circle: /usr/lib/aarch64-linux-gnu/libconsole_bridge.so.0.4
devel/lib/autotarget/circle: CMakeFiles/circle.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/will/catkin_ws/src/autotarget/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable devel/lib/autotarget/circle"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/circle.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/circle.dir/build: devel/lib/autotarget/circle
.PHONY : CMakeFiles/circle.dir/build

CMakeFiles/circle.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/circle.dir/cmake_clean.cmake
.PHONY : CMakeFiles/circle.dir/clean

CMakeFiles/circle.dir/depend:
	cd /home/will/catkin_ws/src/autotarget/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/will/catkin_ws/src/autotarget /home/will/catkin_ws/src/autotarget /home/will/catkin_ws/src/autotarget/cmake-build-debug /home/will/catkin_ws/src/autotarget/cmake-build-debug /home/will/catkin_ws/src/autotarget/cmake-build-debug/CMakeFiles/circle.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/circle.dir/depend

