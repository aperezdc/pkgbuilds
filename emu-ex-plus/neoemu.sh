#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/neo

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/neoemu ]] ; then
		ln -s "${emudir}/neoemu" "${userdir}/neoemu"
	fi
fi

"${userdir}"/neoemu "$@"

