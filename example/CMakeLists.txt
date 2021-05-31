#---------------------------------------------------------------------------##
# \file example/CMakeLists.txt
#
# Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
# Distributed under an MIT open source license: see LICENSE for details.
#---------------------------------------------------------------------------##

add_executable(metis metis.f90)
target_link_libraries(metis Formetis::formetis)
