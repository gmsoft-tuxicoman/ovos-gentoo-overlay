# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="OVOS precise lite models runner."
HOMEPAGE="https://github.com/OpenVoiceOS/precise_lite_runner"
SRC_URI="https://github.com/OpenVoiceOS/precise_lite_runner/archive/refs/tags/${PV/_alpha/a}.tar.gz -> ${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="sci-libs/tensorflow[python] app-misc/mycroft-sonopy dev-python/pyaudio"
RDEPEND="${DEPEND}"
BDEPEND=""

distutils_enable_tests pytest
