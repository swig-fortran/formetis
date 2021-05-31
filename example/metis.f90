!-----------------------------------------------------------------------------!
! \file   example/metis.f90
!
! Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
!-----------------------------------------------------------------------------!

program metis_example
  use, intrinsic :: ISO_C_BINDING
  use, intrinsic :: ISO_FORTRAN_ENV
  use formetis
  implicit none
  integer, parameter :: STDOUT = OUTPUT_UNIT, STDIN = INPUT_UNIT

  ! Print version information
  write(STDOUT, "(a)") "========================================"
  write(STDOUT, "(a, a)") "Formetis version: ", get_formetis_version()
  write(STDOUT, "(a, 2(i1,'.'), (i1), a)") "(Numeric version: ", &
      formetis_version_major, formetis_version_minor, formetis_version_patch, &
      ")"
  write(STDOUT, "(a)") "========================================"
  
end program

!-----------------------------------------------------------------------------!
! end of example/metis.f90
!-----------------------------------------------------------------------------!
