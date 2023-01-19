# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="OVOS wakeword with precise-lite"
HOMEPAGE="https://github.com/OpenVoiceOS/ovos-ww-plugin-precise-lite"
SRC_URI="https://github.com/OpenVoiceOS/${PN}/archive/refs/tags/V${PV/_alpha/a}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="app-misc/ovos-precise-lite-runner app-misc/ovos-plugin-manager app-misc/ovos-utils"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests pytest
