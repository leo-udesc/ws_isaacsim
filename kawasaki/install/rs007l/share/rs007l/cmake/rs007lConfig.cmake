# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_rs007l_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED rs007l_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(rs007l_FOUND FALSE)
  elseif(NOT rs007l_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(rs007l_FOUND FALSE)
  endif()
  return()
endif()
set(_rs007l_CONFIG_INCLUDED TRUE)

# output package information
if(NOT rs007l_FIND_QUIETLY)
  message(STATUS "Found rs007l: 0.0.0 (${rs007l_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'rs007l' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${rs007l_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(rs007l_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${rs007l_DIR}/${_extra}")
endforeach()
