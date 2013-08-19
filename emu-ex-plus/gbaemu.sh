#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/gba

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/gbaemu ]] ; then
		ln -s "${emudir}/gbaemu" "${userdir}/gbaemu"
	fi
fi

"${userdir}"/gbaemu "$@"

