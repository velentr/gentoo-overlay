# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="Personal todo tracker"
HOMEPAGE="https://github.com/velentr/cobalt.git"

EGIT_REPO_URI="https://github.com/velentr/${PN}.git"
KEYWORDS="~amd64"

LICENSE="MIT"
SLOT="0"
IUSE=""

BDEPEND="dev-util/ragel"
RDEPEND=""

src_install() {
	emake DESTDIR="${D}" prefix=/usr install
	dodoc README.md
	doman doc/*.[0-9]

	insinto /usr/share/zsh/site-functions
	doins zsh/_cobalt
}
