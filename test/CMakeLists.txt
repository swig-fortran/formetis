#---------------------------------------------------------------------------##
# \file formetis/test/CMakeLists.txt
#
# Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
# Distributed under an MIT open source license: see LICENSE for details.
#---------------------------------------------------------------------------##

# Create test with dependencies
macro(swig_fortran_add_test TESTNAME)
  add_executable(${TESTNAME}.exe ${TESTNAME}.F90)
  target_link_libraries(${TESTNAME}.exe ${ARGN})
  add_test(NAME ${TESTNAME} COMMAND ${TESTNAME}.exe)
endmacro()

swig_fortran_add_test(test_formetis
  formetis)
