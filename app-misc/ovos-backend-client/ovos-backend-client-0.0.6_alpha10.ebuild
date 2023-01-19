# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Client library for interaction with all compatible ovos-core backend services"
HOMEPAGE="https://github.com/OpenVoiceOS/ovos-backend-client"
SRC_URI="https://github.com/OpenVoiceOS/ovos-backend-client/archive/refs/tags/V${PV/_alpha/a}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${PV/_alpha/a}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="dev-python/json_database app-misc/ovos-utils"
RDEPEND="${DEPEND}"
BDEPEND=""
