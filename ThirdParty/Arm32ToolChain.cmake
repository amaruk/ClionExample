# Target operating system
set (CMAKE_SYSTEM_NAME Linux)
set (CMAKE_SYSTEM_PROCESSOR arm)

# Tool chain
set (CMAKE_C_COMPILER arm-linux-gnueabihf-gcc)
set (CMAKE_CXX_COMPILER arm-linux-gnueabihf-gcc)

# Target environment path
message ("CMAKE_FIND_ROOT_PATH: ${CMAKE_FIND_ROOT_PATH}")
message ("PROJECT_SOURCE_DIR: ${PROJECT_SOURCE_DIR}")
set (CMAKE_FIND_ROOT_PATH /usr/lib/gcc-cross/arm-linux-gnueabihf/7/
        /usr/lib/gcc-cross/arm-linux-gnueabihf/
        /usr/lib/gcc-cross/arm-linux-gnueabihf/7/../../../../arm-linux-gnueabihf/bin/
        /usr/lib/gcc-cross/arm-linux-gnueabihf/7/../../../../arm-linux-gnueabihf/lib/
        /usr/lib/arm-linux-gnueabihf/
        ${PROJECT_SOURCE_DIR}
        )

# Search programs in the host environment
set (CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
# Search headers and libraries in the target environment
set (CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set (CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)