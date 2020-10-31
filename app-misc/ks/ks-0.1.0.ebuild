# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="cli knowledge store"
HOMEPAGE="https://github.com/velentr/ks.git"

if [[ ${PV} =~ 9999* ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/velentr/${PN}.git"
else
	SRC_URI="https://github.com/velentr/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

LICENSE="MIT"
SLOT="0"
IUSE=""

BDEPEND="dev-util/ragel dev-db/sqlite app-text/asciidoc"
RDEPEND="dev-db/sqlite"

src_install() {
	dobin ks
	dodoc README.adoc
	doman ks.1

	insinto /usr/share/zsh/site-functions
	doins zsh/_ks
}
