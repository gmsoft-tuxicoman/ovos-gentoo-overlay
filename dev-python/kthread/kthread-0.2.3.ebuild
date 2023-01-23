# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Killable threads in Python!"
HOMEPAGE="https://github.com/munshigroup/kthread"
SRC_URI="https://files.pythonhosted.org/packages/18/9b/aa1b48c3cf6e1a914ee5eee1fed77cd7217fb0a35c07c345da4ec5215cae/kthread-0.2.3.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
