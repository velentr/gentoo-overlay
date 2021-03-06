# Copyright 2020-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=rdepend
PYTHON_COMPAT=( python3_{6..9} )

inherit distutils-r1

DESCRIPTION="West, Zephyr's meta-tool"
HOMEPAGE="
	https://docs.zephyrproject.org/latest/guides/west/index.html
	https://github.com/zephyrproject-rtos/zephyr.git
"
SRC_URI="https://github.com/zephyrproject-rtos/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="
	dev-python/colorama[${PYTHON_USEDEP}]
	>=dev-python/pyyaml-5.1[${PYTHON_USEDEP}]
	dev-python/pykwalify[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
"
