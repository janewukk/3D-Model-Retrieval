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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.13.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.13.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release"

# Include any dependencies generated for this target.
include tools/CMakeFiles/extract_and_quantize.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/extract_and_quantize.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/extract_and_quantize.dir/flags.make

tools/CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.o: tools/CMakeFiles/extract_and_quantize.dir/flags.make
tools/CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.o: ../tools/extract_and_quantize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.o"
	cd "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/tools" && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.o -c "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/tools/extract_and_quantize.cpp"

tools/CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.i"
	cd "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/tools" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/tools/extract_and_quantize.cpp" > CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.i

tools/CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.s"
	cd "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/tools" && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/tools/extract_and_quantize.cpp" -o CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.s

# Object files for target extract_and_quantize
extract_and_quantize_OBJECTS = \
"CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.o"

# External object files for target extract_and_quantize
extract_and_quantize_EXTERNAL_OBJECTS =

bin/extract_and_quantize: tools/CMakeFiles/extract_and_quantize.dir/extract_and_quantize.cpp.o
bin/extract_and_quantize: tools/CMakeFiles/extract_and_quantize.dir/build.make
bin/extract_and_quantize: lib/libopensse.dylib
bin/extract_and_quantize: tools/CMakeFiles/extract_and_quantize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/extract_and_quantize"
	cd "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/tools" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/extract_and_quantize.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/extract_and_quantize.dir/build: bin/extract_and_quantize

.PHONY : tools/CMakeFiles/extract_and_quantize.dir/build

tools/CMakeFiles/extract_and_quantize.dir/clean:
	cd "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/tools" && $(CMAKE_COMMAND) -P CMakeFiles/extract_and_quantize.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/extract_and_quantize.dir/clean

tools/CMakeFiles/extract_and_quantize.dir/depend:
	cd "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master" "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/tools" "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release" "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/tools" "/Users/junyuewu/Desktop/visual db final/3D-Model-Retrieval/opensse-master/release/tools/CMakeFiles/extract_and_quantize.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : tools/CMakeFiles/extract_and_quantize.dir/depend

