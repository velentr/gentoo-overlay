# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit opam

RNAME="Sulfur"
RDATE="20171101"
DESCRIPTION="Framework for the static analysis of software written in C"
HOMEPAGE="http://frama-c.com"
SRC_URI="${HOMEPAGE}/download/${PN}-${RNAME}-${RDATE}.tar.gz"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="gtk +ocamlopt"

DEPEND=">=dev-lang/ocaml-4.02.3[ocamlopt?]
		>=dev-ml/ocamlgraph-1.8.8[ocamlopt?]
		>=dev-ml/findlib-1.6.1[ocamlopt?]
		dev-ml/zarith[ocamlopt?]
		gtk? ( >=dev-ml/lablgtk-2.18.5[sourceview,gnomecanvas,ocamlopt?] )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${PN}-${RNAME}-${RDATE}"

src_install() {
	emake install DESTDIR="${D}" || die "emake install failed"
	dodoc Changelog doc/README
}
