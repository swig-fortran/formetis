!-----------------------------------------------------------------------------!
! \file   example/metis.f90
!
! Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
! 
! This example is based on metis.cc at
! https://gist.github.com/erikzenker/c4dc42c8d5a8c1cd3e5a
!-----------------------------------------------------------------------------!

program metis_example
  use, intrinsic :: ISO_C_BINDING
  use, intrinsic :: ISO_FORTRAN_ENV
  use formetis
  implicit none
  integer, parameter :: STDOUT = OUTPUT_UNIT, STDIN = INPUT_UNIT
  integer(c_int), parameter :: nvertices(1) = (/6/)
  integer(c_int), parameter :: nedges(1) = (/7/)
  integer(c_int), parameter :: xadj(nvertices(1) + 1) &
    = (/0,2,5,7,9,12,14/)
  integer(c_int), parameter :: adjncy(nedges(1) * 2) &
    = (/1,3,0,4,2,1,5,0,4,3,1,5,4,2/)
  integer(c_int), dimension(1) :: nweights = (/1/)
  integer(c_int), dimension(1) :: nparts = (/2/)
  integer(c_int), dimension(1) :: objval
  integer(c_int), dimension(:), allocatable :: vwgt
  integer(c_int), dimension(:), allocatable :: part
  integer(c_int) :: mresult

  ! Print version information
  write(STDOUT, "(a)") "========================================"
  write(STDOUT, "(a, a)") "Formetis version: ", get_formetis_version()
  write(STDOUT, "(a, 2(i1,'.'), (i1), a)") "(Numeric version: ", &
      formetis_version_major, formetis_version_minor, formetis_version_patch, &
      ")"
  write(STDOUT, "(a)") "========================================"

  allocate(vwgt(nvertices(1) * nweights(1)))
  allocate(part(nvertices(1)))
  call PartGraphKway( &
    nvtxs=nvertices, ncon=nweights, xadj=xadj, adjncy=adjncy, &
    nparts=nparts, edgecut=objval, part=part, swig_result=mresult &
  )
  if (mresult /= OK) then
    write(STDOUT, *) "Error:", mresult
    stop 1
  endif
  write(STDOUT, *) "edgecut=", objval
  write(STDOUT, *) "part=", part
  write(STDOUT, *) "vwgt=", vwgt
  
end program

!-----------------------------------------------------------------------------!
! end of example/metis.f90
!-----------------------------------------------------------------------------!
