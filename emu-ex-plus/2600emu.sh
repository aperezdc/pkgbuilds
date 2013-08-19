#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/2600

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/2600emu ]] ; then
		ln -s "${emudir}/2600emu" "${userdir}/2600emu"
	fi
fi

"${userdir}"/2600emu "$@"

