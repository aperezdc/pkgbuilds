#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/ngp

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/ngpemu ]] ; then
		ln -s "${emudir}/ngpemu" "${userdir}/ngpemu"
	fi
fi

"${userdir}"/ngpemu "$@"

