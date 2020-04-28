# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Merge this to pull in all dependencies for the Zephyr project"
HOMEPAGE="https://www.zephyrproject.org/"

LICENSE="metapackage"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

# TODO: the following are listed as dependencies in the zephyr repo, but are not
# currently available in the gentoo repo:
#  - anytree
#  - gitlint
#  - junit2html
#  - pyocd
#  - sphinx-tabs
#  - sphinxcontrib-svg2pdfconverter
# Add these to RDEPEND once ebuilds are added to the overlay
RDEPEND="
	dev-python/pillow
	>=dev-python/pyyaml-5.1
	>=dev-python/breathe-4.9.1
	dev-python/colorama
	>=dev-python/docutils-0.14
	>=dev-util/gcovr-4.2
	dev-python/intelhex
	dev-python/packaging
	>=dev-python/ply-3.10
	>=dev-python/pyelftools-0.24
	dev-python/pykwalify
	dev-python/pyserial
	dev-python/pytest
	>=dev-python/sphinx-1.7.5
	dev-python/sphinx_rtd_theme
	dev-python/tabulate
	>=dev-vcs/west-0.6.2
"
