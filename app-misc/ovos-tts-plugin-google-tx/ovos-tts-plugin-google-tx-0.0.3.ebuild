# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="OVOS TTS plugin for gTTS"
HOMEPAGE="https://github.com/OpenVoiceOS/ovos-tts-plugin-google-tx"
SRC_URI="https://files.pythonhosted.org/packages/fa/95/2f2d9053949a8a253b324cd73a97fffa7079e573ea5ee2678cbdeeadd9ec/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="app-misc/ovos-plugin-manager dev-python/gtts"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests pytest
