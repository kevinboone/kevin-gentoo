# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="Play musical squawks, beeps, and buzzes at the command line"
HOMEPAGE="https://github.com/kevinboone/tonegen"
SRC_URI="https://github.com/kevinboone/tonegen/archive/refs/tags/v0.1a.tar.gz -> tonegen-0.1a.tar.gz"
S=${WORKDIR}/tonegen-0.1a
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="media-libs/alsa-lib"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile()
  {
  EXTRA_CFLAGS=$CFLAGS emake 
  }
