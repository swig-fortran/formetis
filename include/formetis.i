/*!
 * \file formetis.i
 *
 * Copyright (c) 2021 Oak Ridge National Laboratory, UT-Battelle, LLC.
 * Distributed under an MIT open source license: see LICENSE for details.
 */

%module "formetis"

%include "formetis_utils.i"
%formetis_add_header

/* -------------------------------------------------------------------------
 * Version information
 * ------------------------------------------------------------------------- */

%apply char* { const char formetis_version[] };
%fortranbindc formetis_version_major;
%fortranbindc formetis_version_minor;
%fortranbindc formetis_version_patch;

// These symbols are defined in the CMake-generated `formetis_version.cpp`
%inline %{
extern const char formetis_version[];
extern const int formetis_version_major;
extern const int formetis_version_minor;
extern const int formetis_version_patch;
%}

/* -------------------------------------------------------------------------
 * Metis
 * ------------------------------------------------------------------------- */

// Needs int32/int64
%include <stdint.i>

%{
#include <metis.h>
%}

// Directly bind all API functions
%fortranbindc;
// Use parameters rather than linked constants
%fortranconst;

// Remove METIS_ prefix from bindings
%rename("%(strip:[METIS_])s") "";

%include <metis.h>

/* -------------------------------------------------------------------------
 * Size checking
 * ------------------------------------------------------------------------- */

// This is a very bizarre workaround to a very bizarre problem. Basically,
// SWIG's C preprocessor replaces literal '#define X Y' with '%constant X = Y;',
// but fortunately it allows us to define a macro that is injected into the
// code as a literal #define.
#define SWIGFORMETISDEFINE #define
%header {
SWIGFORMETISDEFINE FORMETIS_INT_SIZE IDXTYPEWIDTH
SWIGFORMETISDEFINE FORMETIS_REAL_SIZE REALTYPEWIDTH
}

%header %{
#if (FORMETIS_INT_SIZE != IDXTYPEWIDTH) \
    || (FORMETIS_REAL_SIZE != REALTYPEWIDTH)
#error "Incompatible Formetis/METIS sizes: you must regenerate this header with SWIG"
#endif
%}
