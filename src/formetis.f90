! This file was automatically generated by SWIG (http://www.swig.org).
! Version 4.0.2+fortran
!
! Do not make changes to this file unless you know what you are doing--modify
! the SWIG interface file instead.

! Formetis project, https://github.com/swig-fortran/formetis
! Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
! Distributed under an MIT open source license: see LICENSE for details.

module formetis
 use, intrinsic :: ISO_C_BINDING
 implicit none
 private

 ! DECLARATION CONSTRUCTS
 type, bind(C) :: SwigArrayWrapper
  type(C_PTR), public :: data = C_NULL_PTR
  integer(C_SIZE_T), public :: size = 0
 end type
 public :: get_formetis_version
 integer(C_INT), public, protected, &
   bind(C, name="formetis_version_major") :: formetis_version_major
 integer(C_INT), public, protected, &
   bind(C, name="formetis_version_minor") :: formetis_version_minor
 integer(C_INT), public, protected, &
   bind(C, name="formetis_version_patch") :: formetis_version_patch
 integer(C_INT), parameter, public :: IDXTYPEWIDTH = 32_C_INT
 integer(C_INT), parameter, public :: REALTYPEWIDTH = 32_C_INT
 character(kind=C_CHAR, len=*), parameter, public :: SCREAL = "f"
 character(kind=C_CHAR, len=*), parameter, public :: PRREAL = "f"
 integer(C_INT), parameter, public :: VER_MAJOR = 5_C_INT
 integer(C_INT), parameter, public :: VER_MINOR = 1_C_INT
 integer(C_INT), parameter, public :: VER_SUBMINOR = 0_C_INT
 integer(C_INT), parameter, public :: NOPTIONS = 40_C_INT
 public :: PartGraphRecursive
 public :: PartGraphKway

 integer, parameter :: swig_cmem_own_bit = 0
 integer, parameter :: swig_cmem_rvalue_bit = 1
 type, bind(C) :: SwigClassWrapper
  type(C_PTR), public :: cptr = C_NULL_PTR
  integer(C_INT), public :: cmemflags = 0
 end type
 type, public :: SWIGTYPE_p_p_int32_t
  type(SwigClassWrapper), public :: swigdata
 end type
 public :: MeshToDual
 public :: MeshToNodal
 public :: PartMeshNodal
 public :: PartMeshDual
 public :: NodeND
 public :: Free
 public :: SetDefaultOptions
 public :: NodeNDP
 public :: ComputeVertexSeparator
 public :: NodeRefine
 ! typedef enum rstatus_et
 enum, bind(c)
  enumerator :: OK = 1
  enumerator :: ERROR_INPUT = -2
  enumerator :: ERROR_MEMORY = -3
  enumerator :: ERROR = -4
 end enum
 integer, parameter, public :: rstatus_et = kind(OK)
 public :: OK, ERROR_INPUT, ERROR_MEMORY, ERROR
 ! typedef enum moptype_et
 enum, bind(c)
  enumerator :: OP_PMETIS
  enumerator :: OP_KMETIS
  enumerator :: OP_OMETIS
 end enum
 integer, parameter, public :: moptype_et = kind(OP_PMETIS)
 public :: OP_PMETIS, OP_KMETIS, OP_OMETIS
 ! typedef enum moptions_et
 enum, bind(c)
  enumerator :: OPTION_PTYPE
  enumerator :: OPTION_OBJTYPE
  enumerator :: OPTION_CTYPE
  enumerator :: OPTION_IPTYPE
  enumerator :: OPTION_RTYPE
  enumerator :: OPTION_DBGLVL
  enumerator :: OPTION_NITER
  enumerator :: OPTION_NCUTS
  enumerator :: OPTION_SEED
  enumerator :: OPTION_NO2HOP
  enumerator :: OPTION_MINCONN
  enumerator :: OPTION_CONTIG
  enumerator :: OPTION_COMPRESS
  enumerator :: OPTION_CCORDER
  enumerator :: OPTION_PFACTOR
  enumerator :: OPTION_NSEPS
  enumerator :: OPTION_UFACTOR
  enumerator :: OPTION_NUMBERING
  enumerator :: OPTION_HELP
  enumerator :: OPTION_TPWGTS
  enumerator :: OPTION_NCOMMON
  enumerator :: OPTION_NOOUTPUT
  enumerator :: OPTION_BALANCE
  enumerator :: OPTION_GTYPE
  enumerator :: OPTION_UBVEC
 end enum
 integer, parameter, public :: moptions_et = kind(OPTION_PTYPE)
 public :: OPTION_PTYPE, OPTION_OBJTYPE, OPTION_CTYPE, OPTION_IPTYPE, OPTION_RTYPE, OPTION_DBGLVL, OPTION_NITER, OPTION_NCUTS, &
    OPTION_SEED, OPTION_NO2HOP, OPTION_MINCONN, OPTION_CONTIG, OPTION_COMPRESS, OPTION_CCORDER, OPTION_PFACTOR, OPTION_NSEPS, &
    OPTION_UFACTOR, OPTION_NUMBERING, OPTION_HELP, OPTION_TPWGTS, OPTION_NCOMMON, OPTION_NOOUTPUT, OPTION_BALANCE, OPTION_GTYPE, &
    OPTION_UBVEC
 ! typedef enum mptype_et
 enum, bind(c)
  enumerator :: PTYPE_RB
  enumerator :: PTYPE_KWAY
 end enum
 integer, parameter, public :: mptype_et = kind(PTYPE_RB)
 public :: PTYPE_RB, PTYPE_KWAY
 ! typedef enum mgtype_et
 enum, bind(c)
  enumerator :: GTYPE_DUAL
  enumerator :: GTYPE_NODAL
 end enum
 integer, parameter, public :: mgtype_et = kind(GTYPE_DUAL)
 public :: GTYPE_DUAL, GTYPE_NODAL
 ! typedef enum mctype_et
 enum, bind(c)
  enumerator :: CTYPE_RM
  enumerator :: CTYPE_SHEM
 end enum
 integer, parameter, public :: mctype_et = kind(CTYPE_RM)
 public :: CTYPE_RM, CTYPE_SHEM
 ! typedef enum miptype_et
 enum, bind(c)
  enumerator :: IPTYPE_GROW
  enumerator :: IPTYPE_RANDOM
  enumerator :: IPTYPE_EDGE
  enumerator :: IPTYPE_NODE
  enumerator :: IPTYPE_METISRB
 end enum
 integer, parameter, public :: miptype_et = kind(IPTYPE_GROW)
 public :: IPTYPE_GROW, IPTYPE_RANDOM, IPTYPE_EDGE, IPTYPE_NODE, IPTYPE_METISRB
 ! typedef enum mrtype_et
 enum, bind(c)
  enumerator :: RTYPE_FM
  enumerator :: RTYPE_GREEDY
  enumerator :: RTYPE_SEP2SIDED
  enumerator :: RTYPE_SEP1SIDED
 end enum
 integer, parameter, public :: mrtype_et = kind(RTYPE_FM)
 public :: RTYPE_FM, RTYPE_GREEDY, RTYPE_SEP2SIDED, RTYPE_SEP1SIDED
 ! typedef enum mdbglvl_et
 enum, bind(c)
  enumerator :: DBG_INFO = 1
  enumerator :: DBG_TIME = 2
  enumerator :: DBG_COARSEN = 4
  enumerator :: DBG_REFINE = 8
  enumerator :: DBG_IPART = 16
  enumerator :: DBG_MOVEINFO = 32
  enumerator :: DBG_SEPINFO = 64
  enumerator :: DBG_CONNINFO = 128
  enumerator :: DBG_CONTIGINFO = 256
  enumerator :: DBG_MEMORY = 2048
 end enum
 integer, parameter, public :: mdbglvl_et = kind(DBG_INFO)
 public :: DBG_INFO, DBG_TIME, DBG_COARSEN, DBG_REFINE, DBG_IPART, DBG_MOVEINFO, DBG_SEPINFO, DBG_CONNINFO, DBG_CONTIGINFO, &
    DBG_MEMORY
 ! typedef enum mobjtype_et
 enum, bind(c)
  enumerator :: OBJTYPE_CUT
  enumerator :: OBJTYPE_VOL
  enumerator :: OBJTYPE_NODE
 end enum
 integer, parameter, public :: mobjtype_et = kind(OBJTYPE_CUT)
 public :: OBJTYPE_CUT, OBJTYPE_VOL, OBJTYPE_NODE

! WRAPPER DECLARATIONS
interface
 subroutine SWIG_free(cptr) &
  bind(C, name="free")
 use, intrinsic :: ISO_C_BINDING
 type(C_PTR), value :: cptr
end subroutine
function swigc_formetis_version_get() &
bind(C, name="_wrap_formetis_version_get") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigarraywrapper
type(SwigArrayWrapper) :: fresult
end function

function swigc_PartGraphRecursive(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9, farg10, farg11, farg12, &
  farg13) &
bind(C, name="_wrap_PartGraphRecursive") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
type(C_PTR), value :: farg7
type(C_PTR), value :: farg8
type(C_PTR), value :: farg9
type(C_PTR), value :: farg10
type(C_PTR), value :: farg11
type(C_PTR), value :: farg12
type(C_PTR), value :: farg13
integer(C_INT) :: fresult
end function

function swigc_PartGraphKway(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9, farg10, farg11, farg12, farg13) &
bind(C, name="_wrap_PartGraphKway") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
type(C_PTR), value :: farg7
type(C_PTR), value :: farg8
type(C_PTR), value :: farg9
type(C_PTR), value :: farg10
type(C_PTR), value :: farg11
type(C_PTR), value :: farg12
type(C_PTR), value :: farg13
integer(C_INT) :: fresult
end function

function swigc_MeshToDual(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8) &
bind(C, name="_wrap_MeshToDual") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
type(SwigClassWrapper), intent(in) :: farg7
type(SwigClassWrapper), intent(in) :: farg8
integer(C_INT) :: fresult
end function

function swigc_MeshToNodal(farg1, farg2, farg3, farg4, farg5, farg6, farg7) &
bind(C, name="_wrap_MeshToNodal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
import :: swigclasswrapper
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(SwigClassWrapper), intent(in) :: farg6
type(SwigClassWrapper), intent(in) :: farg7
integer(C_INT) :: fresult
end function

function swigc_PartMeshNodal(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9, farg10, farg11, farg12) &
bind(C, name="_wrap_PartMeshNodal") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
type(C_PTR), value :: farg7
type(C_PTR), value :: farg8
type(C_PTR), value :: farg9
type(C_PTR), value :: farg10
type(C_PTR), value :: farg11
type(C_PTR), value :: farg12
integer(C_INT) :: fresult
end function

function swigc_PartMeshDual(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9, farg10, farg11, farg12, farg13) &
bind(C, name="_wrap_PartMeshDual") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
type(C_PTR), value :: farg7
type(C_PTR), value :: farg8
type(C_PTR), value :: farg9
type(C_PTR), value :: farg10
type(C_PTR), value :: farg11
type(C_PTR), value :: farg12
type(C_PTR), value :: farg13
integer(C_INT) :: fresult
end function

function swigc_NodeND(farg1, farg2, farg3, farg4, farg5, farg6, farg7) &
bind(C, name="_wrap_NodeND") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
type(C_PTR), value :: farg7
integer(C_INT) :: fresult
end function

function swigc_Free(farg1) &
bind(C, name="_wrap_Free") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), intent(in) :: farg1
integer(C_INT) :: fresult
end function

function swigc_SetDefaultOptions(farg1) &
bind(C, name="_wrap_SetDefaultOptions") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
integer(C_INT) :: fresult
end function

function swigc_NodeNDP(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9) &
bind(C, name="_wrap_NodeNDP") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
integer(C_INT32_T), intent(in) :: farg5
type(C_PTR), value :: farg6
type(C_PTR), value :: farg7
type(C_PTR), value :: farg8
type(C_PTR), value :: farg9
integer(C_INT) :: fresult
end function

function swigc_ComputeVertexSeparator(farg1, farg2, farg3, farg4, farg5, farg6, farg7) &
bind(C, name="_wrap_ComputeVertexSeparator") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), value :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
type(C_PTR), value :: farg7
integer(C_INT) :: fresult
end function

function swigc_NodeRefine(farg1, farg2, farg3, farg4, farg5, farg6, farg7) &
bind(C, name="_wrap_NodeRefine") &
result(fresult)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), intent(in) :: farg1
type(C_PTR), value :: farg2
type(C_PTR), value :: farg3
type(C_PTR), value :: farg4
type(C_PTR), value :: farg5
type(C_PTR), value :: farg6
real(C_FLOAT), intent(in) :: farg7
integer(C_INT) :: fresult
end function

end interface


contains
 ! MODULE SUBPROGRAMS

subroutine SWIGTM_fout_char_Sm_(imout, fout)
  use, intrinsic :: ISO_C_BINDING
  type(SwigArrayWrapper), intent(in) :: imout
  character(len=:), allocatable, intent(out) :: fout
  character(kind=C_CHAR), dimension(:), pointer :: chars
  integer(kind=C_SIZE_T) :: i
  call c_f_pointer(imout%data, chars, [imout%size])
  allocate(character(len=imout%size) :: fout)
  do i=1, imout%size
    fout(i:i) = char(ichar(chars(i)))
  end do
end subroutine

function get_formetis_version() &
result(swig_result)
use, intrinsic :: ISO_C_BINDING
character(len=:), allocatable :: swig_result
type(SwigArrayWrapper) :: fresult 

fresult = swigc_formetis_version_get()
call SWIGTM_fout_char_Sm_(fresult, swig_result)
if (.false.) call SWIG_free(fresult%data)
end function

subroutine PartGraphRecursive(nvtxs, ncon, xadj, adjncy, vwgt, vsize, adjwgt, nparts, tpwgts, ubvec, options, edgecut, part, &
  swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: nvtxs
integer(C_INT32_T), dimension(*), target :: ncon
integer(C_INT32_T), dimension(*), target :: xadj
integer(C_INT32_T), dimension(*), target :: adjncy
integer(C_INT32_T), dimension(*), target :: vwgt
integer(C_INT32_T), dimension(*), target :: vsize
integer(C_INT32_T), dimension(*), target :: adjwgt
integer(C_INT32_T), dimension(*), target :: nparts
real(C_FLOAT), dimension(*), target :: tpwgts
real(C_FLOAT), dimension(*), target :: ubvec
integer(C_INT32_T), dimension(*), target :: options
integer(C_INT32_T), dimension(*), target :: edgecut
integer(C_INT32_T), dimension(*), target :: part
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 
type(C_PTR) :: farg7 
type(C_PTR) :: farg8 
type(C_PTR) :: farg9 
type(C_PTR) :: farg10 
type(C_PTR) :: farg11 
type(C_PTR) :: farg12 
type(C_PTR) :: farg13 

farg1 = c_loc(nvtxs)
farg2 = c_loc(ncon)
farg3 = c_loc(xadj)
farg4 = c_loc(adjncy)
farg5 = c_loc(vwgt)
farg6 = c_loc(vsize)
farg7 = c_loc(adjwgt)
farg8 = c_loc(nparts)
farg9 = c_loc(tpwgts)
farg10 = c_loc(ubvec)
farg11 = c_loc(options)
farg12 = c_loc(edgecut)
farg13 = c_loc(part)
fresult = swigc_PartGraphRecursive(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9, farg10, farg11, farg12, &
  farg13)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine PartGraphKway(nvtxs, ncon, xadj, adjncy, vwgt, vsize, adjwgt, nparts, tpwgts, ubvec, options, edgecut, part, &
  swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: nvtxs
integer(C_INT32_T), dimension(*), target :: ncon
integer(C_INT32_T), dimension(*), target :: xadj
integer(C_INT32_T), dimension(*), target :: adjncy
integer(C_INT32_T), dimension(*), target :: vwgt
integer(C_INT32_T), dimension(*), target :: vsize
integer(C_INT32_T), dimension(*), target :: adjwgt
integer(C_INT32_T), dimension(*), target :: nparts
real(C_FLOAT), dimension(*), target :: tpwgts
real(C_FLOAT), dimension(*), target :: ubvec
integer(C_INT32_T), dimension(*), target :: options
integer(C_INT32_T), dimension(*), target :: edgecut
integer(C_INT32_T), dimension(*), target :: part
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 
type(C_PTR) :: farg7 
type(C_PTR) :: farg8 
type(C_PTR) :: farg9 
type(C_PTR) :: farg10 
type(C_PTR) :: farg11 
type(C_PTR) :: farg12 
type(C_PTR) :: farg13 

farg1 = c_loc(nvtxs)
farg2 = c_loc(ncon)
farg3 = c_loc(xadj)
farg4 = c_loc(adjncy)
farg5 = c_loc(vwgt)
farg6 = c_loc(vsize)
farg7 = c_loc(adjwgt)
farg8 = c_loc(nparts)
farg9 = c_loc(tpwgts)
farg10 = c_loc(ubvec)
farg11 = c_loc(options)
farg12 = c_loc(edgecut)
farg13 = c_loc(part)
fresult = swigc_PartGraphKway(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9, farg10, farg11, farg12, farg13)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine MeshToDual(ne, nn, eptr, eind, ncommon, numflag, r_xadj, r_adjncy, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: ne
integer(C_INT32_T), dimension(*), target :: nn
integer(C_INT32_T), dimension(*), target :: eptr
integer(C_INT32_T), dimension(*), target :: eind
integer(C_INT32_T), dimension(*), target :: ncommon
integer(C_INT32_T), dimension(*), target :: numflag
class(SWIGTYPE_p_p_int32_t), intent(in) :: r_xadj
class(SWIGTYPE_p_p_int32_t), intent(in) :: r_adjncy
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 
type(SwigClassWrapper) :: farg7 
type(SwigClassWrapper) :: farg8 

farg1 = c_loc(ne)
farg2 = c_loc(nn)
farg3 = c_loc(eptr)
farg4 = c_loc(eind)
farg5 = c_loc(ncommon)
farg6 = c_loc(numflag)
farg7 = r_xadj%swigdata
farg8 = r_adjncy%swigdata
fresult = swigc_MeshToDual(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine MeshToNodal(ne, nn, eptr, eind, numflag, r_xadj, r_adjncy, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: ne
integer(C_INT32_T), dimension(*), target :: nn
integer(C_INT32_T), dimension(*), target :: eptr
integer(C_INT32_T), dimension(*), target :: eind
integer(C_INT32_T), dimension(*), target :: numflag
class(SWIGTYPE_p_p_int32_t), intent(in) :: r_xadj
class(SWIGTYPE_p_p_int32_t), intent(in) :: r_adjncy
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(SwigClassWrapper) :: farg6 
type(SwigClassWrapper) :: farg7 

farg1 = c_loc(ne)
farg2 = c_loc(nn)
farg3 = c_loc(eptr)
farg4 = c_loc(eind)
farg5 = c_loc(numflag)
farg6 = r_xadj%swigdata
farg7 = r_adjncy%swigdata
fresult = swigc_MeshToNodal(farg1, farg2, farg3, farg4, farg5, farg6, farg7)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine PartMeshNodal(ne, nn, eptr, eind, vwgt, vsize, nparts, tpwgts, options, objval, epart, npart, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: ne
integer(C_INT32_T), dimension(*), target :: nn
integer(C_INT32_T), dimension(*), target :: eptr
integer(C_INT32_T), dimension(*), target :: eind
integer(C_INT32_T), dimension(*), target :: vwgt
integer(C_INT32_T), dimension(*), target :: vsize
integer(C_INT32_T), dimension(*), target :: nparts
real(C_FLOAT), dimension(*), target :: tpwgts
integer(C_INT32_T), dimension(*), target :: options
integer(C_INT32_T), dimension(*), target :: objval
integer(C_INT32_T), dimension(*), target :: epart
integer(C_INT32_T), dimension(*), target :: npart
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 
type(C_PTR) :: farg7 
type(C_PTR) :: farg8 
type(C_PTR) :: farg9 
type(C_PTR) :: farg10 
type(C_PTR) :: farg11 
type(C_PTR) :: farg12 

farg1 = c_loc(ne)
farg2 = c_loc(nn)
farg3 = c_loc(eptr)
farg4 = c_loc(eind)
farg5 = c_loc(vwgt)
farg6 = c_loc(vsize)
farg7 = c_loc(nparts)
farg8 = c_loc(tpwgts)
farg9 = c_loc(options)
farg10 = c_loc(objval)
farg11 = c_loc(epart)
farg12 = c_loc(npart)
fresult = swigc_PartMeshNodal(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9, farg10, farg11, farg12)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine PartMeshDual(ne, nn, eptr, eind, vwgt, vsize, ncommon, nparts, tpwgts, options, objval, epart, npart, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: ne
integer(C_INT32_T), dimension(*), target :: nn
integer(C_INT32_T), dimension(*), target :: eptr
integer(C_INT32_T), dimension(*), target :: eind
integer(C_INT32_T), dimension(*), target :: vwgt
integer(C_INT32_T), dimension(*), target :: vsize
integer(C_INT32_T), dimension(*), target :: ncommon
integer(C_INT32_T), dimension(*), target :: nparts
real(C_FLOAT), dimension(*), target :: tpwgts
integer(C_INT32_T), dimension(*), target :: options
integer(C_INT32_T), dimension(*), target :: objval
integer(C_INT32_T), dimension(*), target :: epart
integer(C_INT32_T), dimension(*), target :: npart
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 
type(C_PTR) :: farg7 
type(C_PTR) :: farg8 
type(C_PTR) :: farg9 
type(C_PTR) :: farg10 
type(C_PTR) :: farg11 
type(C_PTR) :: farg12 
type(C_PTR) :: farg13 

farg1 = c_loc(ne)
farg2 = c_loc(nn)
farg3 = c_loc(eptr)
farg4 = c_loc(eind)
farg5 = c_loc(vwgt)
farg6 = c_loc(vsize)
farg7 = c_loc(ncommon)
farg8 = c_loc(nparts)
farg9 = c_loc(tpwgts)
farg10 = c_loc(options)
farg11 = c_loc(objval)
farg12 = c_loc(epart)
farg13 = c_loc(npart)
fresult = swigc_PartMeshDual(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9, farg10, farg11, farg12, farg13)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine NodeND(nvtxs, xadj, adjncy, vwgt, options, perm, iperm, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: nvtxs
integer(C_INT32_T), dimension(*), target :: xadj
integer(C_INT32_T), dimension(*), target :: adjncy
integer(C_INT32_T), dimension(*), target :: vwgt
integer(C_INT32_T), dimension(*), target :: options
integer(C_INT32_T), dimension(*), target :: perm
integer(C_INT32_T), dimension(*), target :: iperm
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 
type(C_PTR) :: farg7 

farg1 = c_loc(nvtxs)
farg2 = c_loc(xadj)
farg3 = c_loc(adjncy)
farg4 = c_loc(vwgt)
farg5 = c_loc(options)
farg6 = c_loc(perm)
farg7 = c_loc(iperm)
fresult = swigc_NodeND(farg1, farg2, farg3, farg4, farg5, farg6, farg7)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine Free(ptr, swig_result)
use, intrinsic :: ISO_C_BINDING
type(C_PTR), intent(in) :: ptr
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = ptr
fresult = swigc_Free(farg1)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine SetDefaultOptions(options, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: options
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 

farg1 = c_loc(options)
fresult = swigc_SetDefaultOptions(farg1)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine NodeNDP(nvtxs, xadj, adjncy, vwgt, npes, options, perm, iperm, sizes, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), intent(in) :: nvtxs
integer(C_INT32_T), dimension(*), target :: xadj
integer(C_INT32_T), dimension(*), target :: adjncy
integer(C_INT32_T), dimension(*), target :: vwgt
integer(C_INT32_T), intent(in) :: npes
integer(C_INT32_T), dimension(*), target :: options
integer(C_INT32_T), dimension(*), target :: perm
integer(C_INT32_T), dimension(*), target :: iperm
integer(C_INT32_T), dimension(*), target :: sizes
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
integer(C_INT32_T) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
integer(C_INT32_T) :: farg5 
type(C_PTR) :: farg6 
type(C_PTR) :: farg7 
type(C_PTR) :: farg8 
type(C_PTR) :: farg9 

farg1 = nvtxs
farg2 = c_loc(xadj)
farg3 = c_loc(adjncy)
farg4 = c_loc(vwgt)
farg5 = npes
farg6 = c_loc(options)
farg7 = c_loc(perm)
farg8 = c_loc(iperm)
farg9 = c_loc(sizes)
fresult = swigc_NodeNDP(farg1, farg2, farg3, farg4, farg5, farg6, farg7, farg8, farg9)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine ComputeVertexSeparator(nvtxs, xadj, adjncy, vwgt, options, sepsize, part, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), dimension(*), target :: nvtxs
integer(C_INT32_T), dimension(*), target :: xadj
integer(C_INT32_T), dimension(*), target :: adjncy
integer(C_INT32_T), dimension(*), target :: vwgt
integer(C_INT32_T), dimension(*), target :: options
integer(C_INT32_T), dimension(*), target :: sepsize
integer(C_INT32_T), dimension(*), target :: part
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
type(C_PTR) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 
type(C_PTR) :: farg7 

farg1 = c_loc(nvtxs)
farg2 = c_loc(xadj)
farg3 = c_loc(adjncy)
farg4 = c_loc(vwgt)
farg5 = c_loc(options)
farg6 = c_loc(sepsize)
farg7 = c_loc(part)
fresult = swigc_ComputeVertexSeparator(farg1, farg2, farg3, farg4, farg5, farg6, farg7)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine

subroutine NodeRefine(nvtxs, xadj, vwgt, adjncy, where, hmarker, ubfactor, swig_result)
use, intrinsic :: ISO_C_BINDING
integer(C_INT32_T), intent(in) :: nvtxs
integer(C_INT32_T), dimension(*), target :: xadj
integer(C_INT32_T), dimension(*), target :: vwgt
integer(C_INT32_T), dimension(*), target :: adjncy
integer(C_INT32_T), dimension(*), target :: where
integer(C_INT32_T), dimension(*), target :: hmarker
real(C_FLOAT), intent(in) :: ubfactor
integer(C_INT), intent(out), optional :: swig_result
integer(C_INT) :: fresult 
integer(C_INT32_T) :: farg1 
type(C_PTR) :: farg2 
type(C_PTR) :: farg3 
type(C_PTR) :: farg4 
type(C_PTR) :: farg5 
type(C_PTR) :: farg6 
real(C_FLOAT) :: farg7 

farg1 = nvtxs
farg2 = c_loc(xadj)
farg3 = c_loc(vwgt)
farg4 = c_loc(adjncy)
farg5 = c_loc(where)
farg6 = c_loc(hmarker)
farg7 = ubfactor
fresult = swigc_NodeRefine(farg1, farg2, farg3, farg4, farg5, farg6, farg7)
if (present(swig_result)) then
swig_result = fresult
endif

end subroutine


end module
