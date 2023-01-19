# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Collection of simple utilities for use across the mycroft ecosystem."
HOMEPAGE="https://github.com/OpenVoiceOS/ovos-utils"
SRC_URI="https://github.com/OpenVoiceOS/ovos-utils/archive/refs/tags/V${PV/_alpha/a}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${PV/_alpha/a}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="app-misc/mycroft-messagebus-client dev-python/pexpect dev-python/requests dev-python/json_database dev-python/kthread app-misc/ovos-config dev-python/watchdog"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests pytest
