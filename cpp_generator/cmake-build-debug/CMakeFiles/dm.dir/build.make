# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /home/ilya/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/191.6183.77/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/ilya/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/191.6183.77/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ilya/CLionProjects/generator_examples/cpp_generator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ilya/CLionProjects/generator_examples/cpp_generator/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/dm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/dm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/dm.dir/flags.make

CMakeFiles/dm.dir/main.cpp.o: CMakeFiles/dm.dir/flags.make
CMakeFiles/dm.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ilya/CLionProjects/generator_examples/cpp_generator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/dm.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dm.dir/main.cpp.o -c /home/ilya/CLionProjects/generator_examples/cpp_generator/main.cpp

CMakeFiles/dm.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dm.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ilya/CLionProjects/generator_examples/cpp_generator/main.cpp > CMakeFiles/dm.dir/main.cpp.i

CMakeFiles/dm.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dm.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ilya/CLionProjects/generator_examples/cpp_generator/main.cpp -o CMakeFiles/dm.dir/main.cpp.s

# Object files for target dm
dm_OBJECTS = \
"CMakeFiles/dm.dir/main.cpp.o"

# External object files for target dm
dm_EXTERNAL_OBJECTS =

dm: CMakeFiles/dm.dir/main.cpp.o
dm: CMakeFiles/dm.dir/build.make
dm: CMakeFiles/dm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ilya/CLionProjects/generator_examples/cpp_generator/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/dm.dir/build: dm

.PHONY : CMakeFiles/dm.dir/build

CMakeFiles/dm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/dm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/dm.dir/clean

CMakeFiles/dm.dir/depend:
	cd /home/ilya/CLionProjects/generator_examples/cpp_generator/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ilya/CLionProjects/generator_examples/cpp_generator /home/ilya/CLionProjects/generator_examples/cpp_generator /home/ilya/CLionProjects/generator_examples/cpp_generator/cmake-build-debug /home/ilya/CLionProjects/generator_examples/cpp_generator/cmake-build-debug /home/ilya/CLionProjects/generator_examples/cpp_generator/cmake-build-debug/CMakeFiles/dm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/dm.dir/depend

