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
CMAKE_SOURCE_DIR = /home/huchao/hc_vo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/huchao/hc_vo/build

# Include any dependencies generated for this target.
include test/CMakeFiles/feature_test.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/feature_test.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/feature_test.dir/flags.make

test/CMakeFiles/feature_test.dir/feature_test.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/feature_test.cpp.o: ../test/feature_test.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/feature_test.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/feature_test.cpp.o -c /home/huchao/hc_vo/test/feature_test.cpp

test/CMakeFiles/feature_test.dir/feature_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/feature_test.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/test/feature_test.cpp > CMakeFiles/feature_test.dir/feature_test.cpp.i

test/CMakeFiles/feature_test.dir/feature_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/feature_test.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/test/feature_test.cpp -o CMakeFiles/feature_test.dir/feature_test.cpp.s

test/CMakeFiles/feature_test.dir/feature_test.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/feature_test.cpp.o.requires

test/CMakeFiles/feature_test.dir/feature_test.cpp.o.provides: test/CMakeFiles/feature_test.dir/feature_test.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/feature_test.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/feature_test.cpp.o.provides

test/CMakeFiles/feature_test.dir/feature_test.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/feature_test.cpp.o

test/CMakeFiles/feature_test.dir/__/src/config.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/config.cpp.o: ../src/config.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/config.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/config.cpp.o -c /home/huchao/hc_vo/src/config.cpp

test/CMakeFiles/feature_test.dir/__/src/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/config.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/config.cpp > CMakeFiles/feature_test.dir/__/src/config.cpp.i

test/CMakeFiles/feature_test.dir/__/src/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/config.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/config.cpp -o CMakeFiles/feature_test.dir/__/src/config.cpp.s

test/CMakeFiles/feature_test.dir/__/src/config.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/config.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/config.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/config.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/config.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/config.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/config.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/config.cpp.o

test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o: ../src/initialization.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/initialization.cpp.o -c /home/huchao/hc_vo/src/initialization.cpp

test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/initialization.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/initialization.cpp > CMakeFiles/feature_test.dir/__/src/initialization.cpp.i

test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/initialization.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/initialization.cpp -o CMakeFiles/feature_test.dir/__/src/initialization.cpp.s

test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o

test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o: ../src/fast_detector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o -c /home/huchao/hc_vo/src/fast_detector.cpp

test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/fast_detector.cpp > CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.i

test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/fast_detector.cpp -o CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.s

test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o

test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o: ../src/homography.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/homography.cpp.o -c /home/huchao/hc_vo/src/homography.cpp

test/CMakeFiles/feature_test.dir/__/src/homography.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/homography.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/homography.cpp > CMakeFiles/feature_test.dir/__/src/homography.cpp.i

test/CMakeFiles/feature_test.dir/__/src/homography.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/homography.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/homography.cpp -o CMakeFiles/feature_test.dir/__/src/homography.cpp.s

test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o

test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o: ../src/point3d.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/point3d.cpp.o -c /home/huchao/hc_vo/src/point3d.cpp

test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/point3d.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/point3d.cpp > CMakeFiles/feature_test.dir/__/src/point3d.cpp.i

test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/point3d.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/point3d.cpp -o CMakeFiles/feature_test.dir/__/src/point3d.cpp.s

test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o

test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o: ../src/math_utils.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o -c /home/huchao/hc_vo/src/math_utils.cpp

test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/math_utils.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/math_utils.cpp > CMakeFiles/feature_test.dir/__/src/math_utils.cpp.i

test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/math_utils.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/math_utils.cpp -o CMakeFiles/feature_test.dir/__/src/math_utils.cpp.s

test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o

test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o: ../src/frame.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/frame.cpp.o -c /home/huchao/hc_vo/src/frame.cpp

test/CMakeFiles/feature_test.dir/__/src/frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/frame.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/frame.cpp > CMakeFiles/feature_test.dir/__/src/frame.cpp.i

test/CMakeFiles/feature_test.dir/__/src/frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/frame.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/frame.cpp -o CMakeFiles/feature_test.dir/__/src/frame.cpp.s

test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o

test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o: ../src/pinhole_camera.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_9)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o -c /home/huchao/hc_vo/src/pinhole_camera.cpp

test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/pinhole_camera.cpp > CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.i

test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/pinhole_camera.cpp -o CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.s

test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o

test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o: test/CMakeFiles/feature_test.dir/flags.make
test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o: ../src/abstract_detector.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/huchao/hc_vo/build/CMakeFiles $(CMAKE_PROGRESS_10)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o -c /home/huchao/hc_vo/src/abstract_detector.cpp

test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.i"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/huchao/hc_vo/src/abstract_detector.cpp > CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.i

test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.s"
	cd /home/huchao/hc_vo/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/huchao/hc_vo/src/abstract_detector.cpp -o CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.s

test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o.requires:
.PHONY : test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o.requires

test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o.provides: test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/feature_test.dir/build.make test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o.provides.build
.PHONY : test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o.provides

test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o.provides.build: test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o

# Object files for target feature_test
feature_test_OBJECTS = \
"CMakeFiles/feature_test.dir/feature_test.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/config.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/initialization.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/homography.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/point3d.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/frame.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o" \
"CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o"

# External object files for target feature_test
feature_test_EXTERNAL_OBJECTS =

../bin/feature_test: test/CMakeFiles/feature_test.dir/feature_test.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/config.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o
../bin/feature_test: test/CMakeFiles/feature_test.dir/build.make
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_viz.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_videostab.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_videoio.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_video.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_superres.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_stitching.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_shape.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_photo.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_objdetect.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_ml.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_imgproc.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_imgcodecs.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_highgui.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_hal.a
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_flann.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_features2d.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_core.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_calib3d.so.3.0.0
../bin/feature_test: /home/huchao/Desktop/slambook-master/3rdparty/Sophus/libSophus.so
../bin/feature_test: /home/huchao/workspace/fast/build/libfast.so
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_features2d.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_ml.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_highgui.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_videoio.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_imgcodecs.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_flann.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_video.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_imgproc.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_core.so.3.0.0
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/lib/libopencv_hal.a
../bin/feature_test: /home/huchao/opencv/opencv-3.0.0/build/../3rdparty/ippicv/unpack/ippicv_lnx/lib/intel64/libippicv.a
../bin/feature_test: test/CMakeFiles/feature_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/feature_test"
	cd /home/huchao/hc_vo/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/feature_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/feature_test.dir/build: ../bin/feature_test
.PHONY : test/CMakeFiles/feature_test.dir/build

test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/feature_test.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/config.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/initialization.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/fast_detector.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/homography.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/point3d.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/math_utils.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/frame.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/pinhole_camera.cpp.o.requires
test/CMakeFiles/feature_test.dir/requires: test/CMakeFiles/feature_test.dir/__/src/abstract_detector.cpp.o.requires
.PHONY : test/CMakeFiles/feature_test.dir/requires

test/CMakeFiles/feature_test.dir/clean:
	cd /home/huchao/hc_vo/build/test && $(CMAKE_COMMAND) -P CMakeFiles/feature_test.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/feature_test.dir/clean

test/CMakeFiles/feature_test.dir/depend:
	cd /home/huchao/hc_vo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/huchao/hc_vo /home/huchao/hc_vo/test /home/huchao/hc_vo/build /home/huchao/hc_vo/build/test /home/huchao/hc_vo/build/test/CMakeFiles/feature_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/feature_test.dir/depend

