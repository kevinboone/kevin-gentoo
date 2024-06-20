# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="Convert plain text document(s) to EPUB"
HOMEPAGE="https://github.com/kevinboone/txt2epub"
SRC_URI="https://github.com/kevinboone/txt2epub/archive/refs/tags/v0.0.4.tar.gz -> txt2epub-0.0.4.tar.gz"
S=${WORKDIR}/txt2epub-0.0.4
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="app-arch/zip dev-libs/libpcre"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile()
  {
  EXTRA_CFLAGS=$CFLAGS emake 
  }

