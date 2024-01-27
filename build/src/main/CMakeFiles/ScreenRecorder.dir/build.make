# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_SOURCE_DIR = /home/chen/Documents/ProgrammingProjects/ScreenRecorder

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build

# Include any dependencies generated for this target.
include src/main/CMakeFiles/ScreenRecorder.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/main/CMakeFiles/ScreenRecorder.dir/compiler_depend.make

# Include the progress variables for this target.
include src/main/CMakeFiles/ScreenRecorder.dir/progress.make

# Include the compile flags for this target's objects.
include src/main/CMakeFiles/ScreenRecorder.dir/flags.make

src/main/CMakeFiles/ScreenRecorder.dir/main.cpp.o: src/main/CMakeFiles/ScreenRecorder.dir/flags.make
src/main/CMakeFiles/ScreenRecorder.dir/main.cpp.o: /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/main/main.cpp
src/main/CMakeFiles/ScreenRecorder.dir/main.cpp.o: src/main/CMakeFiles/ScreenRecorder.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/main/CMakeFiles/ScreenRecorder.dir/main.cpp.o"
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/main && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/main/CMakeFiles/ScreenRecorder.dir/main.cpp.o -MF CMakeFiles/ScreenRecorder.dir/main.cpp.o.d -o CMakeFiles/ScreenRecorder.dir/main.cpp.o -c /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/main/main.cpp

src/main/CMakeFiles/ScreenRecorder.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ScreenRecorder.dir/main.cpp.i"
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/main && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/main/main.cpp > CMakeFiles/ScreenRecorder.dir/main.cpp.i

src/main/CMakeFiles/ScreenRecorder.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ScreenRecorder.dir/main.cpp.s"
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/main && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/main/main.cpp -o CMakeFiles/ScreenRecorder.dir/main.cpp.s

# Object files for target ScreenRecorder
ScreenRecorder_OBJECTS = \
"CMakeFiles/ScreenRecorder.dir/main.cpp.o"

# External object files for target ScreenRecorder
ScreenRecorder_EXTERNAL_OBJECTS =

src/main/ScreenRecorder: src/main/CMakeFiles/ScreenRecorder.dir/main.cpp.o
src/main/ScreenRecorder: src/main/CMakeFiles/ScreenRecorder.dir/build.make
src/main/ScreenRecorder: src/recorder/libRecorder.a
src/main/ScreenRecorder: src/client/libClient.a
src/main/ScreenRecorder: src/objects/libObjects.a
src/main/ScreenRecorder: src/main/CMakeFiles/ScreenRecorder.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ScreenRecorder"
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/main && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ScreenRecorder.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/main/CMakeFiles/ScreenRecorder.dir/build: src/main/ScreenRecorder
.PHONY : src/main/CMakeFiles/ScreenRecorder.dir/build

src/main/CMakeFiles/ScreenRecorder.dir/clean:
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/main && $(CMAKE_COMMAND) -P CMakeFiles/ScreenRecorder.dir/cmake_clean.cmake
.PHONY : src/main/CMakeFiles/ScreenRecorder.dir/clean

src/main/CMakeFiles/ScreenRecorder.dir/depend:
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chen/Documents/ProgrammingProjects/ScreenRecorder /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/main /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/main /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/main/CMakeFiles/ScreenRecorder.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/main/CMakeFiles/ScreenRecorder.dir/depend

