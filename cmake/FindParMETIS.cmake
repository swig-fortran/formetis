#----------------------------------*-CMake-*----------------------------------#
# Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
# License-Filename: LICENSE
# SPDX-License-Identifier: MIT
#[=======================================================================[.rst:

FindParMETIS
------------

Find the ParMETIS graph partitioning code.

IMPORTED targets
^^^^^^^^^^^^^^^^

``ParMETIS::parmetis``
  Target for ``parmetis`` library and includes.

Result variables
^^^^^^^^^^^^^^^^

This module will set the following variables if found:

``ParMETIS_INCLUDE_DIRS``
  where to find parmetis.h, etc.
``ParMETIS_LIBRARIES``
  the libraries to link against to use ParMETIS.
``ParMETIS_VERSION``
  version of the ParMETIS library found (NOT IMPLEMENTED)
``ParMETIS_FOUND``
  TRUE if found


#]=======================================================================]

find_path(ParMETIS_INCLUDE_DIR NAMES parmetis.h)
mark_as_advanced(ParMETIS_INCLUDE_DIR)

# Look for the necessary library
find_library(ParMETIS_LIBRARY NAMES parmetis)
mark_as_advanced(ParMETIS_LIBRARY)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(ParMETIS
  REQUIRED_VARS ParMETIS_INCLUDE_DIR ParMETIS_LIBRARY)

# Create the imported target
if(ParMETIS_FOUND)
  set(ParMETIS_INCLUDE_DIRS ${ParMETIS_INCLUDE_DIR})
  set(ParMETIS_LIBRARIES ${ParMETIS_LIBRARY})
  if(NOT TARGET ParMETIS::parmetis)
    add_library(ParMETIS::parmetis UNKNOWN IMPORTED)
    set_target_properties(ParMETIS::parmetis PROPERTIES
      IMPORTED_LOCATION             "${ParMETIS_LIBRARY}"
      INTERFACE_INCLUDE_DIRECTORIES "${ParMETIS_INCLUDE_DIR}")
  endif()
endif()

#-----------------------------------------------------------------------------#
