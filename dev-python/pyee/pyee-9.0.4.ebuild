# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="A rough port of Node.js's EventEmitter to Python with a few tricks of its own."
HOMEPAGE="https://github.com/jfhbrook/pyee"
SRC_URI="https://github.com/jfhbrook/pyee/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="dev-python/typing-extensions"

