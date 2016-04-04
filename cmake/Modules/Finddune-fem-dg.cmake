# - Find DUNE Fem library
#
# Defines the following variables:
#   dune-alugrid_INCLUDE_DIRS    Directory of header files
#   dune-alugrid_LIBRARIES       Directory of shared object files
#   dune-alugrid_DEFINITIONS     Defines that must be set to compile
#   dune-alugrid_CONFIG_VARS     List of defines that should be in config.h
#   HAVE_DUNE_FEM            Binary value to use in config.h

# Copyright (C) 2015 IRIS AS
# This code is licensed under The GNU General Public License v3.0

include (OpmPackage)
find_opm_package (
  # module name
  "dune-fem-dg"

  # dependencies
  # TODO: we should probe for all the HAVE_* values listed below;
  # however, we don't actually use them in our implementation, so
  # we just include them to forward here in case anyone else does
  "CXX11Features REQUIRED;
   dune-fem REQUIRED;
   dune-alugrid;
  "
  # header to search for
  "dune/fem-dg/misc/dgnorm.hh"

  # library to search for
  ""

  # defines to be added to compilations
  ""

  # test program
"#include <dune/fem-dg/misc/dgnorm.hh>
int main (void) {
   return 0;
}
"
  # config variables
  ""
  )

#debug_find_vars ("dune-grid")

# make version number available in config.h
include (UseDuneVer)
find_dune_version ("dune" "fem" "dg")
