#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/gbc

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/gbcemu ]] ; then
		ln -s "${emudir}/gbcemu" "${userdir}/gbcemu"
	fi
fi

"${userdir}"/gbcemu "$@"

