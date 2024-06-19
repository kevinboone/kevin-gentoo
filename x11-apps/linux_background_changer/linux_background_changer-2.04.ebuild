# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="Wallpaper changer for a number of different Linux desktops"
HOMEPAGE="https://github.com/kevinboone/linux_background_changer"
SRC_URI="https://github.com/kevinboone/linux_background_changer/archive/refs/tags/2.0d.tar.gz -> linux_background_changer-2.0d.tar.gz"
S=${WORKDIR}/linux_background_changer-2.0d
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="media-libs/libjpeg-turbo"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile()
  {
  EXTRA_CFLAGS=$CFLAGS emake 
  }
