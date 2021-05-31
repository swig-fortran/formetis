/*!
 * \file forparmetis.i
 *
 * Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
 * Distributed under an MIT open source license: see LICENSE for details.
 */

%module "forparmetis"

%include "formetis_utils.i"
%formetis_add_header

/* -------------------------------------------------------------------------
 * ParMetis
 * ------------------------------------------------------------------------- */

// Needs int32/int64
%include <stdint.i>

// Needs integer definitions from metis
%import <metis.h>

// Needs MPI typemaps
%include "mpi.i"

%{
#include <parmetis.h>
%}

// Use parameters rather than linked constants
%fortranconst;
// ...except for ones with C literals
%nofortranconst KEEP_BIT;

// Remove ParMETIS_V3 prefix from bindings
%rename("%(regex:/^ParMETIS(_V3)?(2)?_(.*)/\\3\\2/)s") "";

// Apply array maps to pointers
%typemap(ftype, in="$typemap(bindc, $1_basetype), dimension(*), target") real_t*, idx_t*
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
%typemap(fin) real_t*, idx_t*
  "$1 = c_loc($input)"
%typemap(fout) real_t*, idx_t*
  "call c_f_pointer($1, $result)"

%include <parmetis.h>
