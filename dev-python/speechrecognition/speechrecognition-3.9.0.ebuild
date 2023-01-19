# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Speech recognition supporting several engines and APIs, online and offline."
HOMEPAGE="https://github.com/Uberi/speech_recognition"
SRC_URI="https://github.com/Uberi/speech_recognition/archive/refs/tags/${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"


RDEPEND="app-python/requests"

S="${WORKDIR}/speech_recognition-${PV}"

distutils_enable_tests pytest
