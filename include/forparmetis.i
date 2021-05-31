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

// All "functions" are really subroutines with return values
%fortransubroutine;

%include <parmetis.h>
