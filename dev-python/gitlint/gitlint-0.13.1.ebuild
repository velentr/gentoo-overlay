# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
PYTHON_COMPAT=( python3_{6,7,8} )

inherit distutils-r1

DESCRIPTION="Linting for your git commit messages"
HOMEPAGE="https://jorisroovers.com/gitlint/"
SRC_URI="mirror://pypi/${PN:0:1}/${PN}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

BDEPEND="
	dev-python/setuptools[${PYTHON_USEDEP}]
	dev-python/wheel[${PYTHON_USEDEP}]
"

RDEPEND="
	~dev-python/click-7.0[${PYTHON_USEDEP}]
	~dev-python/arrow-0.15.5[${PYTHON_USEDEP}]
	~dev-python/sh-1.12.14[${PYTHON_USEDEP}]
"
