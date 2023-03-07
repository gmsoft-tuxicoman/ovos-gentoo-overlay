# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Frameworks, templates and patches for the OVOS universe."
HOMEPAGE="https://github.com/OpenVoiceOS/OVOS-workshop"
SRC_URI="https://github.com/OpenVoiceOS/${PN}/archive/refs/tags/V${PV/_alpha/a}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/OVOS-workshop-${PV/_alpha/a}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="app-misc/ovos-utils app-misc/ovos-config dev-python/rapidfuzz"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests pytest
