cmake_minimum_required(VERSION 3.9)
project(ProjExe)

# Set C++ standard
set(CMAKE_CXX_STANDARD 17)
# Set additional compiler-related settings
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wall")

# Set additional header paths
set(HEADER_PATH "Headers" "../ProjLib/Headers")
# TODO: BEFORE and AFTER key words
# More details about BEFORE and AFTER is available at:
# https://cmake.org/cmake/help/latest/command/include_directories.html
include_directories( ${HEADER_PATH} )
# Or add header files directly
#add_executable(ClionExample main.cpp Headers/main.h)

# Instruct the compiler to find a desired library
#find_package (my_library COMPONENTS REQUIRED component1 component2  OPTIONAL_COMPONENTS opt_component)
find_package (MyLib)

# Build target: executable binary
add_executable(MyExe Sources/MyExe.cpp)
# Link an executable to a library
target_link_libraries (MyExe MyLib)
