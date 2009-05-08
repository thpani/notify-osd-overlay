# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
NEED_PYTHON=2.5

inherit eutils distutils gnome2-utils

DESCRIPTION="A GMail notifier taking advantage of notify-osd and indicator-applet."
HOMEPAGE="https://launchpad.net/gm-notify"
SRC_URI="http://launchpad.net/${PN}/0.x/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-python/indicate-python
	dev-python/notify-python
	>=dev-python/gst-python-0.10
	dev-python/gconf-python
	dev-python/pygtk"
RDEPEND=""

src_prepare() {
	epatch "${FILESDIR}/gconftool.patch"
	epatch "${FILESDIR}/with_stmt.patch"
}

src_install() {
	distutils_src_install

	insinto /etc/gconf/schemas/
	newins data/gm-notify.schema gm-notify.schemas

	gnome2_gconf_savelist
	gnome2_gconf_install
}
