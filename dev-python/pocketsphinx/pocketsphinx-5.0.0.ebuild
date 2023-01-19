# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="A small speech recognizer"
HOMEPAGE="https://github.com/cmusphinx/pocketsphinx"
SRC_URI="https://github.com/cmusphinx/pocketsphinx/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/scikit-build dev-util/cmake"

distutils_enable_tests pytest
