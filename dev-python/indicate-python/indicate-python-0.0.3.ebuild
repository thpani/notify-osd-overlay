# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
NEED_PYTHON=2.3.5

inherit eutils python

DESCRIPTION="Python bindings for libindicate."
HOMEPAGE="https://launchpad.net/indicator-applet"
SRC_URI="http://launchpad.net/indicator-applet/0.1/python${PV}/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=gnome-extra/indicator-applet-0.1.1
	>=dev-python/pygtk-2.14
	dev-python/pygobject"
RDEPEND=""

src_prepare() {
	epatch "${FILESDIR}/libpyglib.patch"
}

src_compile() {
	# we must delay gconf schema installation due to sandbox
	export GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL="1"

	default
}
