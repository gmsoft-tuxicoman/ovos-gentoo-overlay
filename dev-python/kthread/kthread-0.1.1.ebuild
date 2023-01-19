# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Killable threads in Python!"
HOMEPAGE="https://github.com/munshigroup/kthread"
SRC_URI="https://files.pythonhosted.org/packages/aa/91/14cf7dee7188db4dfe1270737bff69bc81b532d8ab75c5e4098a8d5ae1a7/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
