#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/pce

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/pceemu ]] ; then
		ln -s "${emudir}/pceemu" "${userdir}/pceemu"
	fi
fi

"${userdir}"/pceemu "$@"

