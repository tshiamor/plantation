# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/tshiamo/plantation

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tshiamo/plantation/build

# Include any dependencies generated for this target.
include CMakeFiles/plantation_trim.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/plantation_trim.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/plantation_trim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/plantation_trim.dir/flags.make

CMakeFiles/plantation_trim.dir/src/trim.cpp.o: CMakeFiles/plantation_trim.dir/flags.make
CMakeFiles/plantation_trim.dir/src/trim.cpp.o: ../src/trim.cpp
CMakeFiles/plantation_trim.dir/src/trim.cpp.o: CMakeFiles/plantation_trim.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tshiamo/plantation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/plantation_trim.dir/src/trim.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/plantation_trim.dir/src/trim.cpp.o -MF CMakeFiles/plantation_trim.dir/src/trim.cpp.o.d -o CMakeFiles/plantation_trim.dir/src/trim.cpp.o -c /home/tshiamo/plantation/src/trim.cpp

CMakeFiles/plantation_trim.dir/src/trim.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/plantation_trim.dir/src/trim.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tshiamo/plantation/src/trim.cpp > CMakeFiles/plantation_trim.dir/src/trim.cpp.i

CMakeFiles/plantation_trim.dir/src/trim.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/plantation_trim.dir/src/trim.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tshiamo/plantation/src/trim.cpp -o CMakeFiles/plantation_trim.dir/src/trim.cpp.s

# Object files for target plantation_trim
plantation_trim_OBJECTS = \
"CMakeFiles/plantation_trim.dir/src/trim.cpp.o"

# External object files for target plantation_trim
plantation_trim_EXTERNAL_OBJECTS =

plantation_trim: CMakeFiles/plantation_trim.dir/src/trim.cpp.o
plantation_trim: CMakeFiles/plantation_trim.dir/build.make
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_apps.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_outofcore.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_people.so
plantation_trim: /usr/lib/libOpenNI.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libOpenNI2.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libflann_cpp.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_surface.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_keypoints.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_tracking.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_recognition.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_registration.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_stereo.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_segmentation.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_features.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_filters.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_sample_consensus.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_ml.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_visualization.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_search.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_kdtree.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_io.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_octree.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libpng.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libz.so
plantation_trim: /usr/lib/libOpenNI.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libusb-1.0.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libOpenNI2.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkChartsCore-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkInteractionImage-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkIOGeometry-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libjsoncpp.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkIOPLY-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkRenderingLOD-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkViewsContext2D-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkViewsCore-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkGUISupportQt-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkInteractionWidgets-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkFiltersModeling-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkInteractionStyle-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkFiltersExtraction-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkIOLegacy-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkIOCore-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkRenderingAnnotation-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkRenderingContext2D-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkRenderingFreeType-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libfreetype.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkImagingSources-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkIOImage-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkImagingCore-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkRenderingOpenGL2-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkRenderingUI-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkRenderingCore-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkCommonColor-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeometry-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkFiltersSources-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkFiltersGeneral-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkCommonComputationalGeometry-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkFiltersCore-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkCommonExecutionModel-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkCommonDataModel-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkCommonMisc-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkCommonTransforms-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkCommonMath-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkkissfft-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libGLEW.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libX11.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libQt5OpenGL.so.5.15.3
plantation_trim: /usr/lib/x86_64-linux-gnu/libQt5Widgets.so.5.15.3
plantation_trim: /usr/lib/x86_64-linux-gnu/libQt5Gui.so.5.15.3
plantation_trim: /usr/lib/x86_64-linux-gnu/libQt5Core.so.5.15.3
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtkCommonCore-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libtbb.so.12.5
plantation_trim: /usr/lib/x86_64-linux-gnu/libvtksys-9.1.so.9.1.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libpcl_common.so
plantation_trim: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.74.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.74.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.74.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so.1.74.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libboost_serialization.so.1.74.0
plantation_trim: /usr/lib/x86_64-linux-gnu/libqhull_r.so.8.0.2
plantation_trim: CMakeFiles/plantation_trim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tshiamo/plantation/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable plantation_trim"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/plantation_trim.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/plantation_trim.dir/build: plantation_trim
.PHONY : CMakeFiles/plantation_trim.dir/build

CMakeFiles/plantation_trim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/plantation_trim.dir/cmake_clean.cmake
.PHONY : CMakeFiles/plantation_trim.dir/clean

CMakeFiles/plantation_trim.dir/depend:
	cd /home/tshiamo/plantation/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tshiamo/plantation /home/tshiamo/plantation /home/tshiamo/plantation/build /home/tshiamo/plantation/build /home/tshiamo/plantation/build/CMakeFiles/plantation_trim.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/plantation_trim.dir/depend

