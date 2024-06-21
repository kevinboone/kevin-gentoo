# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

inherit desktop xdg

DESCRIPTION="Java-based graphical browser for Gemini capsules"
HOMEPAGE="https://github.com/kevinboone/jgemini"
SRC_URI="https://github.com/kevinboone/jgemini/archive/refs/tags/v0.1a.tar.gz -> jgemini-0.1a.tar.gz"
S=${WORKDIR}/jgemini-0.1a
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND=">=virtual/jre-1.8"
DEPEND=""
BDEPEND=""

APPNAME=jgemini
JARVERSION=1.0
ETCDIR=/etc/${APPNAME}
SHAREDIR=/usr/share/${APPNAME}

src_compile()
  {
  // Do nothing
  }

src_install()
  {
  mkdir -p ${D}/usr/bin
  mkdir -p ${D}/${SHAREDIR}
  mkdir -p ${D}/${ETCDIR}

  cat << EOF > ${D}/usr/bin/${APPNAME}
  #!/bin/bash
  exec java -jar ${SHAREDIR}/${APPNAME}-${JARVERSION}.jar "\$@"
EOF
  
  chmod 755 ${D}/usr/bin/${APPNAME}
  cp samples/${APPNAME}.properties ${D}/${ETCDIR}
  cp binaries/${APPNAME}-${JARVERSION}.jar ${D}/${SHAREDIR}/

  newicon ${S}/src/main/resources/images/${APPNAME}.png ${APPNAME}.png
  make_desktop_entry ${APPNAME} ${APPNAME} ${APPNAME} "Network" "MineType=text/gemini"
  }

pkg_postinst()
  {
  xdg_desktop_database_update 
  }

