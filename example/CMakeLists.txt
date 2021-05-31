#---------------------------------*-CMake-*-----------------------------------#
# Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
# License-Filename: LICENSE
# SPDX-License-Identifier: MIT
#-----------------------------------------------------------------------------#

if(NOT DEFINED PROJECT_NAME)
  cmake_minimum_required(VERSION 3.14)
  # Enable use as a standalone test
  project(FormetisExample LANGUAGES Fortran)
  find_package(Formetis CONFIG REQUIRED)
endif()

add_executable(metis metis.f90)
target_link_libraries(metis Formetis::formetis)
