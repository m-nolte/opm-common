# - Find DUNE PolygonGrid library
#
# Defines the following variables:
#   dune-polygongrid_INCLUDE_DIRS    Directory of header files
#   dune-polygongrid_LIBRARIES       Directory of shared object files
#   dune-polygongrid_DEFINITIONS     Defines that must be set to compile
#   dune-polygongrid_CONFIG_VARS     List of defines that should be in config.h
#   HAVE_DUNE_POLYGONGRID            Binary value to use in config.h

# Copyright (C) 2015 IRIS AS
# This code is licensed under The GNU General Public License v3.0

include (OpmPackage)
find_opm_package (
  # module name
  "dune-polygongrid"

  # dependencies
  # TODO: we should probe for all the HAVE_* values listed below;
  # however, we don't actually use them in our implementation, so
  # we just include them to forward here in case anyone else does
  "CXX11Features REQUIRED;
   dune-common REQUIRED;
   dune-geometry REQUIRED;
   dune-grid  REQUIRED
  "
  # header to search for
  "dune/polygongrid/grid.hh"

  # library to search for
  "dunepolygongrid"

  # defines to be added to compilations
  ""

  # test program
"#include <dune/polygongrid/grid.hh>
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
find_dune_version ("dune" "polygongrid")
