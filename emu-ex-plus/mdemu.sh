#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/md

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/mdemu ]] ; then
		ln -s "${emudir}/mdemu" "${userdir}/mdemu"
	fi
fi

"${userdir}"/mdemu "$@"

