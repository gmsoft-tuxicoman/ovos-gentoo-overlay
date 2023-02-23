# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1 git-r3

DESCRIPTION="OVOS cli client"
HOMEPAGE="https://github.com/OpenVoiceOS/ovos-cli-client"
S="${WORKDIR}/${PN}-${PV/_alpha/a}"
EGIT_COMMIT="0d7f7a44f58e3f3dec054936b881562ccb95c37f"
EGIT_REPO_URI="https://github.com/OpenVoiceOS/ovos-cli-client.git"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

distutils_enable_tests pytest
