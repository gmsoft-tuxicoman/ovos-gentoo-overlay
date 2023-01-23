# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=( python3_10 )
inherit distutils-r1

DESCRIPTION="OpenVoiceOS Core, the FOSS Artificial Intelligence platform."
HOMEPAGE="https://openvoiceos.com/"
SRC_URI="https://github.com/OpenVoiceOS/ovos-core/archive/refs/tags/V${PV/_alpha/a}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${PV/_alpha/a}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

DEPEND="acct-user/ovos
		acct-group/ovos

		dev-python/requests
		dev-python/pyaudio
		dev-python/speechrecognition
		dev-python/tornado
		dev-python/psutil
		dev-python/python-dateutil
		dev-python/pyyaml
		dev-python/watchdog
		app-misc/ovos-backend-client
		app-misc/ovos-config
		app-misc/ovos-utils
		app-misc/ovos-plugin-manager
		app-misc/ovos-stt-plugin-server
		app-misc/ovos-tts-plugin-mimic
		app-misc/ovos-tts-plugin-mimic2
		app-misc/ovos-tts-plugin-google-tx
		app-misc/ovos-ww-plugin-pocketsphinx
		app-misc/ovos-ww-plugin-precise-lite
		app-misc/ovos-workshop
		app-misc/ovos-phal
		app-misc/ovos-lingua-franca
		app-misc/mycroft-messagebus-client
		app-misc/mycroft-adapt
		app-misc/mycroft-padatious
		dev-python/fann2
		app-misc/mycroft-padaos"


RDEPEND="${DEPEND}"
BDEPEND=""


python_install_all() {

	distutils-r1_python_install_all

	keepdir /var/log/ovos
	fowners ovos:ovos /var/log/ovos
	keepdir /etc/mycroft
	fowners ovos:ovos /etc/mycroft
}

distutils_enable_tests pytest
