# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Merge this to pull in all dependencies for the Zephyr project"
HOMEPAGE="https://www.zephyrproject.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64"
IUSE="-build-test -doc -run-test -extras"

# TODO: the following are listed as dependencies in the zephyr repo, but are not
# currently available in the gentoo repo:
#
# extras:
#  - anytree
#  - junit2html
#
# run-test:
#  - >=pyocd-0.24.0
#
# doc:
#  - sphinx-tabs
#  - sphinxcontrib-svg2pdfconverter
#
# Add these to RDEPEND once ebuilds are added to the overlay
RDEPEND="
	>=dev-python/pyelftools-0.24
	>=dev-python/pyyaml-5.1
	dev-python/packaging
	dev-python/intelhex
	>=dev-vcs/west-0.7.2

	build-test? ( dev-python/colorama )
	build-test? ( >=dev-python/ply-3.10 )
	build-test? ( dev-python/pykwalify )
	build-test? ( >=dev-util/gcovr-4.2 )
	build-test? ( dev-python/coverage )
	build-test? ( dev-python/pytest )

	doc? ( >=dev-python/breathe-4.9.1 )
	doc? ( >=dev-python/docutils-0.14 )
	doc? ( =dev-python/sphinx-2* )
	doc? ( dev-python/sphinx_rtd_theme )

	run-test? ( dev-python/pyserial )
	run-test? ( dev-python/tabulate )
	run-test? ( >=dev-python/cbor-1.0.0 )

	extras? ( dev-python/pillow )
	extras? ( dev-python/gitlint )
"
