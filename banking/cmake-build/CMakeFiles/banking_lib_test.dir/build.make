# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.28.3/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.28.3/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/LiWinDom/Documents/Code/timp/lab05/banking

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build

# Include any dependencies generated for this target.
include CMakeFiles/banking_lib_test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/banking_lib_test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/banking_lib_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/banking_lib_test.dir/flags.make

CMakeFiles/banking_lib_test.dir/tests/Account.cc.o: CMakeFiles/banking_lib_test.dir/flags.make
CMakeFiles/banking_lib_test.dir/tests/Account.cc.o: /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/Account.cc
CMakeFiles/banking_lib_test.dir/tests/Account.cc.o: CMakeFiles/banking_lib_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/banking_lib_test.dir/tests/Account.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/banking_lib_test.dir/tests/Account.cc.o -MF CMakeFiles/banking_lib_test.dir/tests/Account.cc.o.d -o CMakeFiles/banking_lib_test.dir/tests/Account.cc.o -c /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/Account.cc

CMakeFiles/banking_lib_test.dir/tests/Account.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/banking_lib_test.dir/tests/Account.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/Account.cc > CMakeFiles/banking_lib_test.dir/tests/Account.cc.i

CMakeFiles/banking_lib_test.dir/tests/Account.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/banking_lib_test.dir/tests/Account.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/Account.cc -o CMakeFiles/banking_lib_test.dir/tests/Account.cc.s

CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o: CMakeFiles/banking_lib_test.dir/flags.make
CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o: /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/Transaction.cc
CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o: CMakeFiles/banking_lib_test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o -MF CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o.d -o CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o -c /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/Transaction.cc

CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/Transaction.cc > CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.i

CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/LiWinDom/Documents/Code/timp/lab05/banking/tests/Transaction.cc -o CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.s

# Object files for target banking_lib_test
banking_lib_test_OBJECTS = \
"CMakeFiles/banking_lib_test.dir/tests/Account.cc.o" \
"CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o"

# External object files for target banking_lib_test
banking_lib_test_EXTERNAL_OBJECTS =

banking_lib_test: CMakeFiles/banking_lib_test.dir/tests/Account.cc.o
banking_lib_test: CMakeFiles/banking_lib_test.dir/tests/Transaction.cc.o
banking_lib_test: CMakeFiles/banking_lib_test.dir/build.make
banking_lib_test: lib/libgtest_main.a
banking_lib_test: lib/libgtest.a
banking_lib_test: CMakeFiles/banking_lib_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable banking_lib_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/banking_lib_test.dir/link.txt --verbose=$(VERBOSE)
	/usr/local/Cellar/cmake/3.28.3/bin/cmake -D TEST_TARGET=banking_lib_test -D TEST_EXECUTABLE=/Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build/banking_lib_test -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build -D TEST_EXTRA_ARGS= -D TEST_PROPERTIES= -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=banking_lib_test_TESTS -D CTEST_FILE=/Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build/banking_lib_test[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=5 -D TEST_XML_OUTPUT_DIR= -P /usr/local/Cellar/cmake/3.28.3/share/cmake/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
CMakeFiles/banking_lib_test.dir/build: banking_lib_test
.PHONY : CMakeFiles/banking_lib_test.dir/build

CMakeFiles/banking_lib_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/banking_lib_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/banking_lib_test.dir/clean

CMakeFiles/banking_lib_test.dir/depend:
	cd /Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/LiWinDom/Documents/Code/timp/lab05/banking /Users/LiWinDom/Documents/Code/timp/lab05/banking /Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build /Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build /Users/LiWinDom/Documents/Code/timp/lab05/banking/cmake-build/CMakeFiles/banking_lib_test.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/banking_lib_test.dir/depend

