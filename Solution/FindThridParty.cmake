
set(CMAKE_CXX_STANDARD 17)

# Try to find third party library (Should be installed before building solution)
set (THIRDPARTY_HEADER_DIR "${PROJECT_SOURCE_DIR}/../../ThirdParty/include/")
set (THIRDPARTY_LIB_DIR "${PROJECT_SOURCE_DIR}/../../ThirdParty/lib/")
message ("!!!THIRDPARTY_HEADER_DIR: ${THIRDPARTY_HEADER_DIR}")
message ("!!!THIRDPARTY_LIB_DIR: ${THIRDPARTY_LIB_DIR}")
find_path (THIRDPARTY_HEADER_PATH ThirdParty.h ${THIRDPARTY_HEADER_DIR} NO_CMAKE_FIND_ROOT_PATH)
find_library (THIRDPARTY_LIB_PATH ThirdParty ${THIRDPARTY_LIB_DIR} NO_CMAKE_FIND_ROOT_PATH)

message ("!!!Third Party header path: ${THIRDPARTY_HEADER_PATH}")
message ("!!!Third Party lib path: ${THIRDPARTY_LIB_PATH}")

if (THIRDPARTY_HEADER_PATH AND THIRDPARTY_LIB_PATH)
  include_directories ( ${THIRDPARTY_HEADER_PATH} )
  # Two ways to link a library
  # 1. Add library path and add library: -Llibrary_path library_name
  #link_directories (${THIRDPARTY_LIB_DIR})
  #set (EXTRA_LIBS ${EXTRA_LIBS} ThirdParty)
  # 2. Add library name with path: library_path/library_name
  set (EXTRA_LIBS ${EXTRA_LIBS} ${THIRDPARTY_LIB_PATH})

  set (THIRDPARTY_FOUND "YES")
endif ()
