# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit acct-user

DESCRIPTION="A user for app-misc/ovos"

ACCT_USER_GROUPS=( "ovos" "audio" "video" )
ACCT_USER_HOME="/var/lib/ovos"
ACCT_USER_ID="-1"

acct-user_add_deps
