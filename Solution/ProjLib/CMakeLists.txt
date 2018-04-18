cmake_minimum_required(VERSION 3.9)

set(CMAKE_CXX_STANDARD 17)

project (ProjLib)

message ("!!!!!!PROJECT_BINARY_DIR: ${ROJECT_BINARY_DIR}")
message ("!!!!!!PROJECT_SOURCE_DIR: ${PROJECT_SOURCE_DIR}")

# Set additional compiler-related settings
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wall")

set (PROJEXE_HEADER_DIR "Headers")
set (PROJEXE_SOURCE_DIR "Sources")

# TODO: BEFORE and AFTER key words
# More details about BEFORE and AFTER is available at:
# https://cmake.org/cmake/help/latest/command/include_directories.html
include_directories ( ${PROJEXE_HEADER_DIR} )

# Build target: Library
# STATIC: static library
# SHARED: shared library (.so on Linux, .dll on Windows)
# MODULE: plugin library. Something that you do not link against, but can load dynamically at runtime. Usually is the same as shared, but is different for Mac OS X.
# left undeclared: could be built as either shared or static
#add_library (my_library STATIC|SHARED|MODULE my_source.cpp)
add_library (MyLib STATIC ${PROJEXE_SOURCE_DIR}/MyLib.cpp)

