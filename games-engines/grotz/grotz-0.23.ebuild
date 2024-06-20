# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="GTK-based interpreter for z-code interactive fiction games"
HOMEPAGE="https://github.com/kevinboone/grotz"
SRC_URI="https://github.com/kevinboone/grotz/archive/refs/tags/0.2c.tar.gz -> grotz-0.2c.tar.gz"
S=${WORKDIR}/grotz-0.2c
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="x11-libs/gtk+:2"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile()
  {
  PLATFORM_CFLAGS=$CFLAGS emake 
  }
