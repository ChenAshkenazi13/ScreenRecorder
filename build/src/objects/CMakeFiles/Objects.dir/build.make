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
include src/objects/CMakeFiles/Objects.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/objects/CMakeFiles/Objects.dir/compiler_depend.make

# Include the progress variables for this target.
include src/objects/CMakeFiles/Objects.dir/progress.make

# Include the compile flags for this target's objects.
include src/objects/CMakeFiles/Objects.dir/flags.make

src/objects/CMakeFiles/Objects.dir/circularList.cpp.o: src/objects/CMakeFiles/Objects.dir/flags.make
src/objects/CMakeFiles/Objects.dir/circularList.cpp.o: /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/objects/circularList.cpp
src/objects/CMakeFiles/Objects.dir/circularList.cpp.o: src/objects/CMakeFiles/Objects.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/objects/CMakeFiles/Objects.dir/circularList.cpp.o"
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/objects && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/objects/CMakeFiles/Objects.dir/circularList.cpp.o -MF CMakeFiles/Objects.dir/circularList.cpp.o.d -o CMakeFiles/Objects.dir/circularList.cpp.o -c /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/objects/circularList.cpp

src/objects/CMakeFiles/Objects.dir/circularList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Objects.dir/circularList.cpp.i"
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/objects && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/objects/circularList.cpp > CMakeFiles/Objects.dir/circularList.cpp.i

src/objects/CMakeFiles/Objects.dir/circularList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Objects.dir/circularList.cpp.s"
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/objects && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/objects/circularList.cpp -o CMakeFiles/Objects.dir/circularList.cpp.s

# Object files for target Objects
Objects_OBJECTS = \
"CMakeFiles/Objects.dir/circularList.cpp.o"

# External object files for target Objects
Objects_EXTERNAL_OBJECTS =

src/objects/libObjects.a: src/objects/CMakeFiles/Objects.dir/circularList.cpp.o
src/objects/libObjects.a: src/objects/CMakeFiles/Objects.dir/build.make
src/objects/libObjects.a: src/objects/CMakeFiles/Objects.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libObjects.a"
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/objects && $(CMAKE_COMMAND) -P CMakeFiles/Objects.dir/cmake_clean_target.cmake
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/objects && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Objects.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/objects/CMakeFiles/Objects.dir/build: src/objects/libObjects.a
.PHONY : src/objects/CMakeFiles/Objects.dir/build

src/objects/CMakeFiles/Objects.dir/clean:
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/objects && $(CMAKE_COMMAND) -P CMakeFiles/Objects.dir/cmake_clean.cmake
.PHONY : src/objects/CMakeFiles/Objects.dir/clean

src/objects/CMakeFiles/Objects.dir/depend:
	cd /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/chen/Documents/ProgrammingProjects/ScreenRecorder /home/chen/Documents/ProgrammingProjects/ScreenRecorder/src/objects /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/objects /home/chen/Documents/ProgrammingProjects/ScreenRecorder/build/src/objects/CMakeFiles/Objects.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/objects/CMakeFiles/Objects.dir/depend

