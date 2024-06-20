# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="Get a weather forecast from the BBC"
HOMEPAGE="https://github.com/kevinboone/bbcweather"
SRC_URI="https://github.com/kevinboone/bbcweather/archive/refs/tags/v0.2a.tar.gz -> bbcweather-0.2a.tar.gz"
S=${WORKDIR}/bbcweather-0.2a
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="net-misc/curl"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile()
  {
  EXTRA_CFLAGS=$CFLAGS emake 
  }
