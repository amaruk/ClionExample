cmake_minimum_required(VERSION 3.9)

set(CMAKE_CXX_STANDARD 17)

# Different message levels
message ("NONE MESSAGE") # Important information
message (STATUS "STATUS MESSAGE") # Incidental information
message (WARNING "WARNING MESSAGE") # Warning, continue processing
message (AUTHOR_WARNING "AUTHOR_WARNING MESSAGE") # Warning (dev), continue processing
#message (SEND_ERROR "SEND_ERROR MESSAGE") # Error, continue processing, but skip generation
#message (FATAL_ERROR "FATAL_ERROR MESSAGE") # Error, stop processing and generation
message (DEPRECATION "DEPRECATION MESSAGE") # Deprecation Error or Warning if variable CMAKE_ERROR_DEPRECATED or CMAKE_WARN_DEPRECATED is enabled, respectively, else no message.

# Conditional statement
# Available keywords:
# NOT, AND, OR, 
# EQUAL, LESS, GREATER,
# STRLESS, STREQUAL, STRGREATER,
# VERSION_LESS, VERSION_EQUAL, VERSION_GREATER,
# COMMAND command-name, 
# DEFINED variable, 
# EXISTS file-directory-name,
# IS_DIRECTORY name, IS_ABSOLUTE name,
# file1 IS_NEWER_THAN file2
# variable MATCHES regex
# string MATCHES regex
if (CMAKE_SIZEOF_VOID_P EQUAL 8)
  message ("64-bit ")
else (CMAKE_SIZEOF_VOID_P EQUAL 4)
  message ("32-bit ")
endif ()
if (MSVC)
  message ("MSVC ")
  if (MSVC_VERSION EQUAL 1400)
    message ("8.0 VS2005")
  elseif (MSVC_VERSION EQUAL 1500)
    message ("9.0 VS2008")
  elseif (MSVC_VERSION EQUAL 1600)
    message ("10.0 VS2010")
  elseif (MSVC_VERSION EQUAL 1700)
    message ("11.0 VS2012")
  elseif (MSVC_VERSION EQUAL 1800)
    message ("12.0 VS2013")
  elseif (MSVC_VERSION EQUAL 1900)
    message ("14.0 VS2015")
  elseif (MSVC_VERSION GREATER_EQUAL 1910 AND MSVC_VERSION LESS_EQUAL 1919)
    message ("15.0 VS2017")
  else ()
    message ("Unknown ${MSVC_VERSION}")
  endif ()
endif ()

# Looping construct: foreach
set (multi_element_var A B C)
foreach (element ${multi_element_var})
  message ("!!!Element: ${element}")
endforeach ()

# Looping construct: while
set (loop_i 10)
while (${loop_i} GREATER 1)
  message ("!!!loop_i: ${loop_i}")
  set (loop_i 0)
  message ("!!!loop_i: ${loop_i}")
endwhile ()

# Procedure definition: function
function (function_name parameter_name)
  message ("!!!function: ${parameter_name}")
endfunction ()

function_name ("Hello, function.")

# Procedure definition: macro
macro (macro_name parameter_name)
  message ("!!!macro: ${parameter_name}")
endmacro ()

macro_name ("Hello, macro.")

# Cache entry with options
set (cache_entry_options "Items" CACHE STRING "Select an item.")
set_property (CACHE cache_entry_options PROPERTY STRINGS "A" "B" "C")

# Global paths
message ("!!!!!!PROJECT_BINARY_DIR: ${ROJECT_BINARY_DIR}")
message ("!!!!!!PROJECT_SOURCE_DIR: ${PROJECT_SOURCE_DIR}")

# Include sub-projects into the main project.
add_subdirectory (ProjLib)
add_subdirectory (ProjExe)