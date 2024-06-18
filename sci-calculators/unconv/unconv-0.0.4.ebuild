# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3
# Note that the Gentoo build creates the file /usr/bin/unconv, not uconv,
#   because uconv already exists in the base installation -- it is an
#   encoding converter.

EAPI=8

DESCRIPTION="General-purpose unit converter"
HOMEPAGE="https://github.com/kevinboone/uconv"
SRC_URI="https://github.com/kevinboone/uconv/archive/refs/tags/0.0.4.tar.gz -> uconv-0.0.4.tar.gz"
S=${WORKDIR}/uconv-0.0.4
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile()
  {
  NAME=unconv emake 
  }

src_install()
  {
  echo "XXXXXXXXXXXXXXXXXXXXXXXXXXXX"
  echo emake DESTDIR="${D}" NAME=unconv install
  echo "YYYYYYYYYYYYYYYYYYYYYYYYYYYY"
  NAME=unconv emake DESTDIR="${D}" NAME=unconv  install
  }




