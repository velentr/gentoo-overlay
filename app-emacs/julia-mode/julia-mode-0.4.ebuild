# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit elisp

DESCRIPTION="Julia support in Emacs"
HOMEPAGE="https://github.com/JuliaEditorSupport/julia-emacs"
SRC_URI="https://github.com/JuliaEditorSupport/julia-emacs/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}/julia-emacs-${PV}"
SITEFILE="50${PN}-gentoo.el"
DOCS="CHANGELOG.md README.md"
