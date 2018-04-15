# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

ETYPE=sources
K_DEFCONFIG="xilinx_zynqmp_defconfig"
K_SECURITY_UNSUPPORTED=1

inherit kernel-2
detect_version
detect_arch

inherit git-r3
EGIT_REPO_URI="https://github.com/xilinx/linux-xlnx.git"
EGIT_COMMIT="xilinx-v${PV}"
EGIT_CHECKOUT_DIR="${S}"

DESCRIPTION="Xilinx Zynq kernel sources"
HOMEPAGE="https://github.com/xilinx/linux-xlnx"

KEYWORDS="~arm64 ~arm"

src_unpack() {
	git-r3_src_unpack
}
