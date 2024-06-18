# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="Convert EPUB documents to plain text"
HOMEPAGE="https://github.com/kevinboone/epub2txt2"
SRC_URI="https://github.com/kevinboone/epub2txt2/archive/refs/tags/v2.08.tar.gz -> epub2txt2-2.08.tar.gz"
S=${WORKDIR}/epub2txt2-2.08
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="app-arch/unzip"
RDEPEND="${DEPEND}"
BDEPEND=""

src_compile()
  {
  EXTRA_CFLAGS=$CFLAGS emake 
  }

