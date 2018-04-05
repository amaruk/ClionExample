cmake_minimum_required(VERSION 3.9)
project(ProjLib)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
# Set additional compiler-related settings
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wall")

set(PROJEXE_HEADER_DIR "Headers")
set(PROJEXE_SOURCE_DIR "Sources")

# TODO: BEFORE and AFTER key words
# More details about BEFORE and AFTER is available at:
# https://cmake.org/cmake/help/latest/command/include_directories.html
include_directories( ${PROJEXE_HEADER_DIR} )

# Build target: Library
# STATIC: static library
# SHARED: shared library (.so on Linux, .dll on Windows)
# MODULE: plugin library. Something that you do not link against, but can load dynamically at runtime.
#add_library (my_library STATIC|SHARED|MODULE my_source.cpp)
add_library (MyLib STATIC ${PROJEXE_SOURCE_DIR}/MyLib.cpp)

