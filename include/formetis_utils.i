/*!
 * \file formetis_utils.i
 *
 * Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
 * Distributed under an MIT open source license: see LICENSE for details.
 */

%define %formetis_add_header
%insert("fbegin") %{
! Formetis project, https://github.com/swig-fortran/formetis
! Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
! Distributed under an MIT open source license: see LICENSE for details.
%}
%insert("begin") %{
/*
 * Formetis project, https://github.com/swig-fortran/formetis
 * Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
 * Distributed under an MIT open source license: see LICENSE for details.
 */
%}
%enddef

// Apply array maps to pointers
%typemap(ftype, in="$typemap(bindc, $1_basetype), dimension(*), target, optional") real_t*, idx_t*
 "$typemap(bindc, $1_basetype), dimension(*)";
%typemap(imtype, in="type(C_PTR), value") real_t*, idx_t*
 "type(C_PTR)";
%typemap(ctype) real_t*, idx_t*
  "$typemap(ctype, $*1_ltype)*";
%typemap(in,  noblock=1) real_t*, idx_t* {
   $1 = ($1_ltype)($input);
}
%typemap(out) real_t*, idx_t*
  "$result = $1;"
%typemap(fin, noblock=1) real_t*, idx_t* {
  if (present($input)) then
    $1 = c_loc($input)
  else
    $1 = C_NULL_PTR
  endif
}
%typemap(fout) real_t*, idx_t*
  "call c_f_pointer($1, $result)";

// Apply array maps to pointers (bindc mode)
%typemap(bindc, in="$typemap(bindc, $1_basetype), dimension(*), target") real_t* ,  idx_t*
 "$typemap(bindc, $1_basetype), dimension(*)";
