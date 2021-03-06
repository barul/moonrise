# Copyright 1999-2005 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="3"
inherit distutils

DESCRIPTION="Integrated Development Environment for Gentoo Linux ebuilds"
HOMEPAGE="http://abeni.sf.net/"
SRC_URI="mirror://sourceforge/abeni/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64 ~ppc ~sparc"
IUSE=""

DEPEND="virtual/python
	>=dev-python/wxpython-2.4.2.4
	>=sys-apps/portage-2.0.46-r12
	>=app-portage/gentoolkit-0.1.30"

src_install() {
	distutils_src_install
	insinto /usr/share/abeni
	doins abenirc
	insinto /usr/share/abeni/templates
	doins template/*
	insinto /usr/share/abeni/priv_funcs
	doins docs/priv_funcs/*
	cd docs
	dodoc TODO ChangeLog README COPYING CREDITS
}

