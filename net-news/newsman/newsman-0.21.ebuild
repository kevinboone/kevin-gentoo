# Copyright (c)2024 Kevin Boone 
# Distributed under the terms of the GNU General Public License v3

EAPI=8

DESCRIPTION="Show BBC news headlines in a console, using the manual viewer"
HOMEPAGE="https://github.com/kevinboone/newsman"
SRC_URI="https://github.com/kevinboone/newsman/archive/refs/tags/0.2a.tar.gz -> newsman-0.2a.tar.gz"
S=${WORKDIR}/newsman-0.2a
LICENSE="GPL-3"
SLOT="0"
KEYWORDS="amd64 x86"

DEPEND="net-misc/curl dev-libs/libxslt sys-apps/less sys-apps/man-db"
RDEPEND="${DEPEND}"
BDEPEND=""

