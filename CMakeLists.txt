#---------------------------------*-CMake-*----------------------------------#
# Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
# License-Filename: LICENSE
# SPDX-License-Identifier: MIT
#---------------------------------------------------------------------------#

cmake_minimum_required(VERSION 3.14)

# Determine version number from git metadata
include("${CMAKE_CURRENT_LIST_DIR}/cmake/CgvFindVersion.cmake")
cgv_find_version(Formetis)

project(Formetis VERSION "${Formetis_VERSION}" LANGUAGES C Fortran)
cmake_policy(VERSION 3.14...3.19)

list(APPEND CMAKE_MODULE_PATH "${PROJECT_SOURCE_DIR}/cmake")
include(FlibUtils)

#---------------------------------------------------------------------------#
# OPTIONS
#---------------------------------------------------------------------------#

option(BUILD_SHARED_LIBS "Build shared libraries" ON)
option(FORMETIS_USE_MPI "Enable Parmetis and distributed memory parallelism" ON)
# TODO: change defaults before release
option(FORMETIS_USE_SWIG "Regenerate source files using SWIG" ON)

unset(_default_build_examples)
if(CMAKE_PROJECT_NAME STREQUAL PROJECT_NAME)
  set(_default_build_examples ON)
endif()
option(FORMETIS_BUILD_EXAMPLES "Build examples" ${_default_build_examples})

#---------------------------------------------------------------------------#
# MODULES TO LOAD
#---------------------------------------------------------------------------#

find_package(METIS REQUIRED)

if(FORMETIS_USE_MPI)
  find_package(MPI REQUIRED)
  find_package(ParMETIS REQUIRED)
endif()

# Load SWIG if FORMETIS_USE_SWIG is true
flib_find_and_use_swig(FORMETIS)

# Load CTest if applicable
if(FORMETIS_BUILD_EXAMPLES)
  include(CTest)
endif()

#---------------------------------------------------------------------------#
# LIBRARY
#---------------------------------------------------------------------------#

include(GNUInstallDirs)

set(FORMETIS_NAMESPACE "Formetis::")
flib_dir_variables(FORMETIS)

# List of libraries exported by cmake/FormetisConfig.cmake.in
set(FORMETIS_LIBRARIES)

function(formetis_add_module name)
  flib_add_fortran_module(FORMETIS ${name} "c" "f90" ${ARGN})

  # Allow the library to be referred to by its namespaced version, for use by
  # downstream projects that *directly* compile formetis
  add_library(${FORMETIS_NAMESPACE}${name} ALIAS ${name})

  # Set up installation
  install(TARGETS
    ${name}
    EXPORT Formetis-targets
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  )
  # Add to list of targets to export
  set(FORMETIS_LIBRARIES ${FORMETIS_LIBRARIES} ${FORMETIS_NAMESPACE}${name}
    PARENT_SCOPE
  )
endfunction()

# Configure version information and generate primary formetis module
set(FORMETIS_VERSION_C "${CMAKE_CURRENT_BINARY_DIR}/formetis_version.c")
configure_file("${CMAKE_CURRENT_LIST_DIR}/cmake/formetis_version.c.in"
  "${FORMETIS_VERSION_C}" @ONLY)
formetis_add_module(formetis "${FORMETIS_VERSION_C}")
target_link_libraries(formetis METIS::metis)

if(FORMETIS_USE_MPI)
  formetis_add_module(forparmetis)
  target_link_libraries(forparmetis formetis ParMETIS::parmetis MPI::MPI_C)
endif()

#---------------------------------------------------------------------------#
# TESTING AND DOCS
#---------------------------------------------------------------------------#

if(FORMETIS_BUILD_EXAMPLES)
  add_subdirectory(example)
endif()

if(FORMETIS_BUILD_DOCS)
  add_subdirectory(doc)
endif()

#---------------------------------------------------------------------------#
# INSTALLATION
#---------------------------------------------------------------------------#

set(FORMETIS_INSTALL_CONFIGDIR
    "${CMAKE_INSTALL_LIBDIR}/cmake/${PROJECT_NAME}")

# Install module files
install(DIRECTORY
  "${CMAKE_Fortran_MODULE_DIRECTORY}/"
  DESTINATION "${FORMETIS_INSTALL_MODULEDIR}"
)

install(EXPORT Formetis-targets
  FILE FormetisTargets.cmake
  NAMESPACE ${FORMETIS_NAMESPACE}
  DESTINATION ${FORMETIS_INSTALL_CONFIGDIR}
)

# Create a ConfigVersion.cmake file
include(CMakePackageConfigHelpers)

configure_package_config_file(
  "${CMAKE_CURRENT_SOURCE_DIR}/cmake/FormetisConfig.cmake.in"
  "${CMAKE_CURRENT_BINARY_DIR}/FormetisConfig.cmake"
  INSTALL_DESTINATION ${FORMETIS_INSTALL_CONFIGDIR}
)

write_basic_package_version_file(
  "${CMAKE_CURRENT_BINARY_DIR}/FormetisConfigVersion.cmake"
  VERSION "${PROJECT_VERSION}"
  COMPATIBILITY SameMajorVersion
)

install(FILES
  "${CMAKE_CURRENT_BINARY_DIR}/FormetisConfig.cmake"
  "${CMAKE_CURRENT_BINARY_DIR}/FormetisConfigVersion.cmake"
  DESTINATION ${FORMETIS_INSTALL_CONFIGDIR}
)
