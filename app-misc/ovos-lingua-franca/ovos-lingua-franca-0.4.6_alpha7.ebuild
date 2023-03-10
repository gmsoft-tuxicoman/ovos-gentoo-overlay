# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="OVOS multilingual text parsing and formatting library"
HOMEPAGE="https://github.com/OpenVoiceOS/ovos-lingua-franca"
SRC_URI="https://github.com/OpenVoiceOS/${PN}/archive/refs/tags/V${PV/_alpha/a}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${PV/_alpha/a}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/python-dateutil dev-python/rapidfuzz dev-python/colour dev-python/webcolors dev-python/quebra-frases"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests pytest
