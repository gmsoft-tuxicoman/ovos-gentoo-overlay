# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1


DESCRIPTION="OpenVoiceOS companion plugin for OpenVoiceOS STT Server"
HOMEPAGE="https://github.com/OpenVoiceOS/ovos-stt-plugin-server"
SRC_URI="https://files.pythonhosted.org/packages/f1/5f/3fdc83de6697b0270af54a50ee8aacdda161cbf58d446d3170835fd6960a/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="app-misc/ovos-plugin-manager"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests pytest

