# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="A rigid, lightweight, dead-simple intent parser"
HOMEPAGE="https://github.com/MycroftAI/padaos"
SRC_URI="https://github.com/MycroftAI/padaos/archive/refs/tags/v${PV/_alpha/a}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/padaos-${PV}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
