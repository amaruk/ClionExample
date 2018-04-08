cmake_minimum_required(VERSION 3.9)

set(CMAKE_CXX_STANDARD 17)

project (ThirdParty)

set (THIRDPARTY_HEADER_DIR "include")
set (THIRDPARTY_SOURCE_DIR "source")

include_directories ( ${THIRDPARTY_HEADER_DIR} )

add_library (ThirdParty STATIC ${THIRDPARTY_SOURCE_DIR}/ThirdParty.cpp)
