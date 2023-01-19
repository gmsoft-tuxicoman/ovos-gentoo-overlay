# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Utility to retrieve phonemes from text"
HOMEPAGE="https://github.com/OpenJarbas/phoneme_guesser"
SRC_URI="https://github.com/OpenJarbas/phoneme_guesser/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN/-/_}-${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
