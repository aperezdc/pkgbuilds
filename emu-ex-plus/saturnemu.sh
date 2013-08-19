#! /bin/bash

emudir=/usr/lib/emu-ex-plus/
userdir=~/.emu-ex-plus/saturn

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
	if [[ ! -r ${userdir}/saturnemu ]] ; then
		ln -s "${emudir}/saturnemu" "${userdir}/saturnemu"
	fi
fi

"${userdir}"/saturnemu "$@"

