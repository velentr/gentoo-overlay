# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit toolchain-funcs

DESCRIPTION="Alpine Linux package management tools"
HOMEPAGE="https://wiki.alpinelinux.org/wiki/Alpine_Linux_package_management"

SRC_URI="https://git.alpinelinux.org/cgit/${PN}/snapshot/${P}.tar.bz2"
KEYWORDS="~amd64"

LICENSE="GPL-2"
SLOT="0"
IUSE="libressl"

BDEPEND="virtual/pkgconfig"
RDEPEND="
	libressl? ( dev-libs/libressl )
	!libressl? ( dev-libs/openssl:0 )
	sys-libs/zlib
"
DEPEND="${RDEPEND}"

PATCHES=(
	"${FILESDIR}"/bash-not-sh.patch
	"${FILESDIR}"/ignore-unused-result.patch
	"${FILESDIR}"/makefile-overrides.patch
	"${FILESDIR}"/sysmacros-include.patch
)

src_compile() {
	emake \
		"LUAAPK=" \
		"CC=$(tc-getCC)" \
		"AR=$(tc-getAR)" \
		"LD=$(tc-getLD)" \
		"DESTDIR=${D}" \
		"DOCDIR=/usr/share/doc/${P}"
}

src_install() {
	emake \
		"LUAAPK=" \
		"CC=$(tc-getCC)" \
		"AR=$(tc-getAR)" \
		"LD=$(tc-getLD)" \
		"DESTDIR=${D}" \
		"DOCDIR=/usr/share/doc/${P}" \
		install
}
