# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit toolchain-funcs

COMMIT="909e5f7"
DESCRIPTION="Open source replacement of Xilinx's bootgen application"
SRC_URI="https://api.github.com/repos/antmicro/zynq-${PN}/tarball/${COMMIT} -> ${P}.tar.gz"
HOMEPAGE="https://github.com/antmicro/zynq-mkbootimage"

LICENSE="BSD-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""
S="${WORKDIR}/antmicro-zynq-${PN}-${COMMIT}/"

DEPEND="
	dev-libs/libpcre
	dev-libs/libelf"

RDEPEND="${DEPEND}"

src_prepare() {
	eapply_user
	sed -e "s:gcc:$(tc-getCC):" -i Makefile || die
}

src_install() {
	dobin "${S}/${PN}"
	dodoc "${S}/README"
}
