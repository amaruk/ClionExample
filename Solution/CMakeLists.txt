cmake_minimum_required(VERSION 3.9)

include("CMakeGlobalSettings.cmake")

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
if (MSVC80)
  message("!!!MSVC80")
elseif (MSVC90)
  message("!!!MSVC90")
else (MSVC80)
  message("!!!Very new MSVC")
endif (MSVC80)

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

# Include sub-projects into the main project.
add_subdirectory (ProjLib)
add_subdirectory (ProjExe)