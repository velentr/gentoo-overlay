# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit bash-completion-r1

DESCRIPTION="Erlang build tool that follows OTP principles"
HOMEPAGE="https://www.rebar3.org"
SRC_URI="https://github.com/erlang/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-lang/erlang"
RDEPEND="${DEPEND}"

src_compile() {
	./bootstrap
}

src_install() {
	dobin rebar3

	dobashcomp priv/shell-completion/bash/${PN}

	insinto /usr/share/zsh/site-functions
	doins priv/shell-completion/zsh/_${PN}
}
