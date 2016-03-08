# -*- mode: cmake; tab-width: 2; indent-tabs-mode: t; truncate-lines: t; compile-command: "cmake -Wdev" -*-
# vim: set filetype=cmake autoindent tabstop=2 shiftwidth=2 noexpandtab softtabstop=2 nowrap:

# this avoids an annoying deprecation warning on DUNE 2.4 (which we
# are not interested in anyway)
set(DUNE_AVOID_CAPABILITIES_IS_PARALLEL_DEPRECATION_WARNING 1)

# dependencies
set (polygon-fv_DEPS
	# compile with C++0x/11 support if available
	"CXX11Features REQUIRED"
	# DUNE prerequisites
	"dune-common REQUIRED"
	"dune-geometry REQUIRED"
	"dune-grid REQUIRED"
	"dune-alugrid"
	"dune-cornerpoint"
	)
