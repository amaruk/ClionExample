cmake_minimum_required(VERSION 3.9)

set(CMAKE_CXX_STANDARD 17)

project (ProjExe)

message ("!!!!!!PROJECT_BINARY_DIR: ${ROJECT_BINARY_DIR}")
message ("!!!!!!PROJECT_SOURCE_DIR: ${PROJECT_SOURCE_DIR}")

# Set additional compiler-related settings
#set (CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -Wall")

# The project version
set (PROJ_EXE_VERSION_MAJOR 0)
set (PROJ_EXE_VERSION_MINOR 1)
# Set header and source paths
set (PROJEXE_CONFIGURE_DIR "Configure")
set (PROJEXE_HEADER_DIR "Headers")
set (PROJEXE_SOURCE_DIR "Sources")
set (PROJLIB_HEADER_DIR "../ProjLib/Headers")
# configure a header file to pass some of the CMake settings
# to the source code in the generated project folder
configure_file (
  "${PROJEXE_CONFIGURE_DIR}/version.h.in"
  "${PROJECT_BINARY_DIR}/version.h"
  )
 
# TODO: BEFORE and AFTER key words
# More details about BEFORE and AFTER is available at:
# https://cmake.org/cmake/help/latest/command/include_directories.html
include_directories ( ${PROJEXE_HEADER_DIR} )
include_directories ( ${PROJLIB_HEADER_DIR} )
# PROJECT_BINARY_DIR is the cmake generated project folder
include_directories ( ${PROJECT_BINARY_DIR} )

# Try to find third party library (Should be installed before building solution)
include ("../FindThridParty.cmake")
if (THIRDPARTY_FOUND)
  message ("!!!Third Party ready. ${THIRDPARTY_FOUND}")
else()
  message ("!!!Third Party failed. ${THIRDPARTY_FOUND}")
endif()

# Load settings for an external project.
#find_package (my_library COMPONENTS REQUIRED component1 component2  OPTIONAL_COMPONENTS opt_component)
#find_package (MyLib)

# En option of using the dummy lib (Will be available in the CMake GUI.)
option (USE_DUMMY_LIB "Use the dummy lib?" OFF) 
# To use or not to Use
if (USE_DUMMY_LIB)
  message ("!!!!!USE_DUMMY_LIB defined in CMakeLists.txt")
  set (PROJLIBDUMMY_HEADER_DIR "../ProjLibDummy/Headers")
  include_directories ( ${PROJLIBDUMMY_HEADER_DIR} )
  find_package (MyLibDummy)
  set (EXTRA_LIBS ${EXTRA_LIBS} MyLibDummy)
endif (USE_DUMMY_LIB)

# Add definition
option (DEBUG_OUTPUT "Enable debug print?" ON)
if (DEBUG_OUTPUT)
  add_definitions (-DDEBUG_OUTPUT)
endif ()
# A more finer level of granularity
# Without APPEND means replace definitions
set_property (DIRECTORY APPEND PROPERTY COMPILE_DEFINITIONS DIR_LEVEL_DEF=1)
set_property (TARGET MyLib APPEND PROPERTY COMPILE_DEFINITIONS TAR_LEVEL_DEF=2)
set_property (SOURCE MyExe.cpp APPEND PROPERTY COMPILE_DEFINITIONS SRC_LEVEL_DEF=3)
# Suggested to create a header file with all definitions.

# Build target: executable binary
add_executable (MyExe ${PROJEXE_SOURCE_DIR}/MyExe.cpp)
# Link an executable to a library
target_link_libraries (MyExe MyLib ${EXTRA_LIBS})

