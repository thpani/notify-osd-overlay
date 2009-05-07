# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit gnome2

DESCRIPTION="A small applet to display information from various applications consistently in the panel."
HOMEPAGE="https://launchpad.net/indicator-applet"
SRC_URI="http://launchpad.net/${PN}/0.1/${PV}/+download/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=">=dev-libs/dbus-glib-0.76
	>=dev-libs/glib-2.18.0
	>=gnome-base/gnome-panel-2.0
	>=gnome-base/libgnomeui-2.0
	>=x11-libs/gtk+-2.12"
RDEPEND=""
