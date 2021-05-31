#----------------------------------*-CMake-*----------------------------------#
# Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
# License-Filename: LICENSE
# SPDX-License-Identifier: MIT
#[=======================================================================[.rst:

FindMETIS
----------

Find the METIS graph partitioning code.

IMPORTED targets
^^^^^^^^^^^^^^^^

``METIS::metis``
  Target for ``metis`` library and includes.

Result variables
^^^^^^^^^^^^^^^^

This module will set the following variables if found:

``METIS_INCLUDE_DIRS``
  where to find metis.h, etc.
``METIS_LIBRARIES``
  the libraries to link against to use METIS.
``METIS_VERSION``
  version of the METIS library found (NOT IMPLEMENTED)
``METIS_FOUND``
  TRUE if found


#]=======================================================================]

find_path(METIS_INCLUDE_DIR NAMES metis.h)
mark_as_advanced(METIS_INCLUDE_DIR)

# Look for the necessary library
find_library(METIS_LIBRARY NAMES metis)
mark_as_advanced(METIS_LIBRARY)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(METIS
  REQUIRED_VARS METIS_INCLUDE_DIR METIS_LIBRARY)

# Create the imported target
if(METIS_FOUND)
  set(METIS_INCLUDE_DIRS ${METIS_INCLUDE_DIR})
  set(METIS_LIBRARIES ${METIS_LIBRARY})
  if(NOT TARGET METIS::metis)
    add_library(METIS::metis UNKNOWN IMPORTED)
    set_target_properties(METIS::metis PROPERTIES
      IMPORTED_LOCATION             "${METIS_LIBRARY}"
      INTERFACE_INCLUDE_DIRECTORIES "${METIS_INCLUDE_DIR}")
  endif()
endif()

#-----------------------------------------------------------------------------#
