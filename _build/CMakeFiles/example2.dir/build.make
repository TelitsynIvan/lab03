# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.23.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.23.0/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/marmelad/TelitsynIvan/workspace/projects/lab03

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/marmelad/TelitsynIvan/workspace/projects/lab03/_build

# Include any dependencies generated for this target.
include CMakeFiles/example2.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/example2.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/example2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/example2.dir/flags.make

CMakeFiles/example2.dir/examples/example2.cpp.o: CMakeFiles/example2.dir/flags.make
CMakeFiles/example2.dir/examples/example2.cpp.o: ../examples/example2.cpp
CMakeFiles/example2.dir/examples/example2.cpp.o: CMakeFiles/example2.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/marmelad/TelitsynIvan/workspace/projects/lab03/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/example2.dir/examples/example2.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/example2.dir/examples/example2.cpp.o -MF CMakeFiles/example2.dir/examples/example2.cpp.o.d -o CMakeFiles/example2.dir/examples/example2.cpp.o -c /Users/marmelad/TelitsynIvan/workspace/projects/lab03/examples/example2.cpp

CMakeFiles/example2.dir/examples/example2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/example2.dir/examples/example2.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/marmelad/TelitsynIvan/workspace/projects/lab03/examples/example2.cpp > CMakeFiles/example2.dir/examples/example2.cpp.i

CMakeFiles/example2.dir/examples/example2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/example2.dir/examples/example2.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/marmelad/TelitsynIvan/workspace/projects/lab03/examples/example2.cpp -o CMakeFiles/example2.dir/examples/example2.cpp.s

# Object files for target example2
example2_OBJECTS = \
"CMakeFiles/example2.dir/examples/example2.cpp.o"

# External object files for target example2
example2_EXTERNAL_OBJECTS =

example2: CMakeFiles/example2.dir/examples/example2.cpp.o
example2: CMakeFiles/example2.dir/build.make
example2: libprint.a
example2: CMakeFiles/example2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/marmelad/TelitsynIvan/workspace/projects/lab03/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable example2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/example2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/example2.dir/build: example2
.PHONY : CMakeFiles/example2.dir/build

CMakeFiles/example2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/example2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/example2.dir/clean

CMakeFiles/example2.dir/depend:
	cd /Users/marmelad/TelitsynIvan/workspace/projects/lab03/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/marmelad/TelitsynIvan/workspace/projects/lab03 /Users/marmelad/TelitsynIvan/workspace/projects/lab03 /Users/marmelad/TelitsynIvan/workspace/projects/lab03/_build /Users/marmelad/TelitsynIvan/workspace/projects/lab03/_build /Users/marmelad/TelitsynIvan/workspace/projects/lab03/_build/CMakeFiles/example2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/example2.dir/depend

