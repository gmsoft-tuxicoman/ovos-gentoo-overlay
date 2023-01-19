# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="Create temporary files and temporary dirs in memory-based filesystems on Linux."
HOMEPAGE="https://github.com/mbello/memory-tempfile"
SRC_URI="https://github.com/mbello/memory-tempfile/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"


distutils_enable_tests pytest
