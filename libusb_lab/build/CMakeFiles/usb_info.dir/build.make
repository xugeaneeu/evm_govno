# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_SOURCE_DIR = /home/xugeaneeu/EVM_prakt4/libusb_lab

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xugeaneeu/EVM_prakt4/libusb_lab/build

# Include any dependencies generated for this target.
include CMakeFiles/usb_info.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/usb_info.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/usb_info.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/usb_info.dir/flags.make

CMakeFiles/usb_info.dir/codegen:
.PHONY : CMakeFiles/usb_info.dir/codegen

CMakeFiles/usb_info.dir/libusb_lab.cpp.o: CMakeFiles/usb_info.dir/flags.make
CMakeFiles/usb_info.dir/libusb_lab.cpp.o: /home/xugeaneeu/EVM_prakt4/libusb_lab/libusb_lab.cpp
CMakeFiles/usb_info.dir/libusb_lab.cpp.o: CMakeFiles/usb_info.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/xugeaneeu/EVM_prakt4/libusb_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/usb_info.dir/libusb_lab.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/usb_info.dir/libusb_lab.cpp.o -MF CMakeFiles/usb_info.dir/libusb_lab.cpp.o.d -o CMakeFiles/usb_info.dir/libusb_lab.cpp.o -c /home/xugeaneeu/EVM_prakt4/libusb_lab/libusb_lab.cpp

CMakeFiles/usb_info.dir/libusb_lab.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/usb_info.dir/libusb_lab.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xugeaneeu/EVM_prakt4/libusb_lab/libusb_lab.cpp > CMakeFiles/usb_info.dir/libusb_lab.cpp.i

CMakeFiles/usb_info.dir/libusb_lab.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/usb_info.dir/libusb_lab.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xugeaneeu/EVM_prakt4/libusb_lab/libusb_lab.cpp -o CMakeFiles/usb_info.dir/libusb_lab.cpp.s

# Object files for target usb_info
usb_info_OBJECTS = \
"CMakeFiles/usb_info.dir/libusb_lab.cpp.o"

# External object files for target usb_info
usb_info_EXTERNAL_OBJECTS =

usb_info: CMakeFiles/usb_info.dir/libusb_lab.cpp.o
usb_info: CMakeFiles/usb_info.dir/build.make
usb_info: CMakeFiles/usb_info.dir/compiler_depend.ts
usb_info: CMakeFiles/usb_info.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/xugeaneeu/EVM_prakt4/libusb_lab/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable usb_info"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/usb_info.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/usb_info.dir/build: usb_info
.PHONY : CMakeFiles/usb_info.dir/build

CMakeFiles/usb_info.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/usb_info.dir/cmake_clean.cmake
.PHONY : CMakeFiles/usb_info.dir/clean

CMakeFiles/usb_info.dir/depend:
	cd /home/xugeaneeu/EVM_prakt4/libusb_lab/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xugeaneeu/EVM_prakt4/libusb_lab /home/xugeaneeu/EVM_prakt4/libusb_lab /home/xugeaneeu/EVM_prakt4/libusb_lab/build /home/xugeaneeu/EVM_prakt4/libusb_lab/build /home/xugeaneeu/EVM_prakt4/libusb_lab/build/CMakeFiles/usb_info.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/usb_info.dir/depend
