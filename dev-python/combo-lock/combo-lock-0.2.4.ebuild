# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="The combo-lock is a combination of a process lock and a thread lock."
HOMEPAGE="https://github.com/forslund/combo-lock"
SRC_URI="https://github.com/forslund/combo-lock/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/filelock dev-python/memory-tempfile"

distutils_enable_tests pytest
