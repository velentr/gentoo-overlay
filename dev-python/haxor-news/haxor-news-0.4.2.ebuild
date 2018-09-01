# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python{2_7,3_{4,5,6}} )

inherit distutils-r1

DESCRIPTION="Browse Hacker News like a haxor: A Hacker News command line interface (CLI)"
HOMEPAGE="
	https://pypi.org/project/haxor-news/
	https://github.com/donnemartin/haxor-news
"

SRC_URI="https://github.com/donnemartin/${PN}/archive/${PV}.tar.gz -> ${P}.github.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND="
	>=dev-python/click-5.1[${PYTHON_USEDEP}]
	>=dev-python/colorama-0.3.3[${PYTHON_USEDEP}]
	>=dev-python/requests-2.4.3[${PYTHON_USEDEP}]
	>=dev-python/pygments-2.0.2[${PYTHON_USEDEP}]
	>=dev-python/prompt_toolkit-1.0.0[${PYTHON_USEDEP}]
	>=dev-python/six-1.9.0[${PYTHON_USEDEP}]
"

BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
"

PATCHES=(
	"${FILESDIR}"/${PN}-0.4.2-exclude-tests.patch
)
