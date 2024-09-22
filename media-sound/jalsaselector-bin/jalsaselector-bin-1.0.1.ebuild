# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

inherit desktop xdg

DESCRIPTION="Select default ALSA soundcard from a list"
HOMEPAGE="https://github.com/kevinboone/jalsaselector"
SRC_URI="https://github.com/kevinboone/jalsaselector/archive/refs/tags/1.0.1.tar.gz -> jalsaselector-1.0.1.tar.gz"
S=${WORKDIR}/jalsaselector-1.0.1
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

RDEPEND=">=virtual/jre-1.8"
DEPEND=""
BDEPEND=""

APPNAME=jalsaselector
JARVERSION=1.0.1
SHAREDIR=/usr/share/${APPNAME}

src_compile()
  {
  // Do nothing
  }

src_install()
  {
  mkdir -p ${D}/usr/bin
  mkdir -p ${D}/${SHAREDIR}

  cat << EOF > ${D}/usr/bin/${APPNAME}
  #!/bin/bash
  exec java -jar ${SHAREDIR}/${APPNAME}-${JARVERSION}.jar "\$@"
EOF
  
  chmod 755 ${D}/usr/bin/${APPNAME}
  cp binaries/${APPNAME}-${JARVERSION}.jar ${D}/${SHAREDIR}/

  newicon ${S}/samples/${APPNAME}.png ${APPNAME}.png
  make_desktop_entry ${APPNAME} "ALSA default selector" ${APPNAME} "AudioVideo"
  }

pkg_postinst()
  {
  xdg_desktop_database_update 
  }

