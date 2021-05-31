# Formetis

Formetis is a set of automatically generated bindings to the
[METIS](http://glaros.dtc.umn.edu/gkhome/views/metis) and
ParMETIS graph partitioning libraries. With the default settings of 32-bit
reals and floats, the installed Formetis library requires nothing but a Fortran
compiler, and building requires a C compiler. If building with a modified
(64-bit) version of METIS, the [SWIG-Fortran
tool](https://github.com/swig-fortran/swig) is required to regenerate the
bindings.

This library is primarily a proof of concept, a demonstration of rapidly adding
Fortran bindings to an external library. For a better-documented library in
high-level Fortran, see the unaffiliated [Fmetis
project](https://github.com/ivan-pi/fmetis).
