# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Public keys for Alpine Linux packages"
HOMEPAGE="https://alpinelinux.org"
APK_VSN="3.11.2"
SRC_URI="https://git.alpinelinux.org/aports/snapshot/aports-${APK_VSN}.tar.bz2"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

S="${WORKDIR}"

src_install() {
	insinto /etc/apk/keys
	doins aports-${APK_VSN}/main/alpine-keys/alpine-devel@lists.alpinelinux.org-*
}
