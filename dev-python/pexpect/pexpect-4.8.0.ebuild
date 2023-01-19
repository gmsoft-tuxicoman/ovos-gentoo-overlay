# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="A Python module for controlling interactive programs in a pseudo-terminal"
HOMEPAGE="https://github.com/pexpect/pexpect"
SRC_URI="https://github.com/pexpect/pexpect/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
