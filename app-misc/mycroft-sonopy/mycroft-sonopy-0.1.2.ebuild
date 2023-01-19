# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="A simple audio feature extraction library"
HOMEPAGE="https://github.com/MycroftAI/sonopy"
SRC_URI="https://files.pythonhosted.org/packages/2b/4d/862855fb391bc30351f90d6c50ea913df9d18b0ae3b6b8ef3c7aa3ac976f/sonopy-${PV}.tar.gz"
S="${WORKDIR}/sonopy-${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
