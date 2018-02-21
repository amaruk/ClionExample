cmake_minimum_required(VERSION 3.9)
project(ClionExample)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
# Set additional compiler-related settings
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wall")

# Set additional header paths
set(HEADER_PATH "ProjExe/Headers")
# TODO: BEFORE and AFTER key words
# More details about BEFORE and AFTER is available at:
# https://cmake.org/cmake/help/latest/command/include_directories.html
include_directories( ${HEADER_PATH} )
# Or add header files directly
#add_executable(ClionExample main.cpp Headers/main.h)

# Build target: executable binary
add_executable(ClionExample ProjExe/Sources/main.cpp)
# Build target: Library
#add_library (my_library STATIC|SHARED|MODULE my_source.cpp)
add_library (MyLib STATIC ProjLib/Sources/MyLib.cpp ProjLib/Headers/MyLib.h)
