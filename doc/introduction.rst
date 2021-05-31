.. ############################################################################
.. File  : doc/introduction.rst
.. ############################################################################

************
Introduction
************

TODO

Installation
============

Formetis is built using modern CMake_, and it has no external dependencies. This
makes installation quite simple as long as you have a relatively recent
software stack with a Fortran and compatible C++ compiler.

1. Download and install CMake if it's not already on your system. It is highly
   recommended to use a package manager such as Homebrew_ for Mac or YUM_ for
   Red Hat Linux.
2. Download the `Formetis source code`_ from GitHub if you haven't already.
3. Create a new build directory (for example purposes, create a subdirectory
   named ``build`` inside your downloaded source directory) and ``cd`` to it.
4. Run CMake: ``cmake ..``
5. Make and install (by default it will install to ``/usr/local``):
   ``make install``.

By default, Formetis builds shared libraries. Add the CMake argument
``-DBUILD_SHARED_LIBS:BOOL=OFF`` to build static libraries.

.. _CMake: https://cmake.org
.. _Homebrew: https://brew.sh
.. _YUM: https://access.redhat.com/solutions/9934
.. _Formetis source code: https://github.com/swig-fortran/formetis/releases

Downstream usage as a library
=============================

The Formetis library is most easily used when your downstream app is built with
CMake. It should require a single line to initialize::

   find_package(Formetis REQUIRED CONFIG)

and a single line to link against your app or library::

   target_link_libraries(example_backend Formetis::formetis)

If your installation prefix for Formetis is a system default path (such as
``/usr/local``) or in your ``$CMAKE_PREFIX_PATH`` environment variable, it
should automatically find the necessary CMake configure file.
