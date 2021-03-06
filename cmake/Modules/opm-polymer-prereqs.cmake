# -*- mode: cmake; tab-width: 2; indent-tabs-mode: t; truncate-lines: t; compile-command: "cmake -Wdev" -*-
# vim: set filetype=cmake autoindent tabstop=2 shiftwidth=2 noexpandtab softtabstop=2 nowrap:

# defines that must be present in config.h for our headers
set (opm-polymer_CONFIG_VAR
	)

# dependencies
set (opm-polymer_DEPS
	# compile with C99 support if available
	"C99"
	# compile with C++0x/11 support if available
	"CXX11Features"
	# various runtime library enhancements
	"Boost 1.44.0
		COMPONENTS date_time filesystem system iostreams unit_test_framework REQUIRED"
	# Ensembles-based Reservoir Tools
	"ERT"
	# OPM dependency
	"opm-autodiff REQUIRED;
	opm-common;
	opm-core REQUIRED"
	# Eigen
	"Eigen3 3.1 REQUIRED"
	)
