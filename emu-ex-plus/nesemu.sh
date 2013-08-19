#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/nes

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/nesemu ]] ; then
		ln -s "${emudir}/nesemu" "${userdir}/nesemu"
	fi
fi

"${userdir}"/nesemu "$@"

