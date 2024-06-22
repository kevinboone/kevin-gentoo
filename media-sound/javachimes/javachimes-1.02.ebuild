# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="Java-based windchime sound generator"
HOMEPAGE="https://github.com/kevinboone/javachimes"
SRC_URI="https://github.com/kevinboone/javachimes/archive/refs/tags/1.0b.tar.gz -> javachimes-1.0b.tar.gz"
S=${WORKDIR}/javachimes-1.0b
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND=">=virtual/jre-1.8"
DEPEND=""
BDEPEND=""

APPNAME=javachimes
JARVERSION=1.0b
SHAREDIR=/usr/share
MYSHAREDIR=${SHAREDIR}/${APPNAME}
MANDIR=${SHAREDIR}/man

src_compile()
  {
  // Do nothing
  }

src_install()
  {
  mkdir -p ${D}/usr/bin
  mkdir -p ${D}/${SHAREDIR}
  mkdir -p ${D}/${MYSHAREDIR}
  mkdir -p ${D}/${MANDIR}/man1

  cat << EOF > ${D}/usr/bin/${APPNAME}
  #!/bin/bash
  exec java -jar ${MYSHAREDIR}/${APPNAME}-${JARVERSION}.jar "\$@"
EOF
  
  chmod 755 ${D}/usr/bin/${APPNAME}
  cp binaries/${APPNAME}-${JARVERSION}.jar ${D}/${MYSHAREDIR}/
  cp man1/${APPNAME}.1 ${D}/${MANDIR}/man1/

  }

