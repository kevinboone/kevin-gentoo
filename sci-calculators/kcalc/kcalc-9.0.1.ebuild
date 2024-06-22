# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="A scientific calculator, extensible in Lua"
HOMEPAGE="https://github.com/kevinboone/kcalc"
SRC_URI="https://github.com/kevinboone/kcalc/archive/refs/tags/v9.0.1.tar.gz -> kcalc-9.0.1.tar.gz"
S=${WORKDIR}/kcalc-9.0.1
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
