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
CMAKE_SOURCE_DIR = /mnt/c/code/TU_Berlin/04_RuVS/praxis1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/code/TU_Berlin/04_RuVS/praxis1/build

# Utility rule file for print.

# Include any custom commands dependencies for this target.
include CMakeFiles/print.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/print.dir/progress.make

CMakeFiles/print:
	/usr/bin/cmake -E echo /mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/webserver

print: CMakeFiles/print
print: CMakeFiles/print.dir/build.make
.PHONY : print

# Rule to build all files generated by this target.
CMakeFiles/print.dir/build: print
.PHONY : CMakeFiles/print.dir/build

CMakeFiles/print.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/print.dir/cmake_clean.cmake
.PHONY : CMakeFiles/print.dir/clean

CMakeFiles/print.dir/depend:
	cd /mnt/c/code/TU_Berlin/04_RuVS/praxis1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/code/TU_Berlin/04_RuVS/praxis1 /mnt/c/code/TU_Berlin/04_RuVS/praxis1 /mnt/c/code/TU_Berlin/04_RuVS/praxis1/build /mnt/c/code/TU_Berlin/04_RuVS/praxis1/build /mnt/c/code/TU_Berlin/04_RuVS/praxis1/build/CMakeFiles/print.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/print.dir/depend

