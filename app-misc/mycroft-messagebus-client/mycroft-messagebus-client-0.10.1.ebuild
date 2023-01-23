# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1


DESCRIPTION="Python module for connecting to the mycroft messagebus"
HOMEPAGE="https://github.com/MycroftAI/mycroft-messagebus-client"
SRC_URI="https://github.com/MycroftAI/mycroft-messagebus-client/archive/refs/tags/release/v0.10.1.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-release-v${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/websocket-client dev-python/pyee"
RDEPEND="${DEPEND}"
BDEPEND=""

export MYCROFT_LOOSE_REQUIREMENTS=true

distutils_enable_tests pytest

