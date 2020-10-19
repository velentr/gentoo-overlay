# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit git-r3

DESCRIPTION="cli knowledge store"
HOMEPAGE="https://github.com/velentr/ks.git"

EGIT_REPO_URI="https://github.com/velentr/${PN}.git"
KEYWORDS="~amd64"

LICENSE="MIT"
SLOT="0"
IUSE=""

BDEPEND="dev-util/ragel dev-db/sqlite app-text/asciidoc"
RDEPEND="dev-db/sqlite"

src_install() {
	dobin ks
	dodoc README.adoc
	doman ks.1
}
