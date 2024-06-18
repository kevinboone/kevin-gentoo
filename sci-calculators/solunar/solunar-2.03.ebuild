# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="Calculate sun/moon rise/set times, etc"
HOMEPAGE="https://github.com/kevinboone/solunar2"
SRC_URI="https://github.com/kevinboone/solunar2/archive/refs/tags/v2.0c.tar.gz -> solunar-2.0.3.tar.gz"
S=${WORKDIR}/solunar2-2.0c
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile()
  {
  EXTRA_CFLAGS=$CFLAGS emake 
  }
