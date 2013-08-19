#! /bin/bash

emudir=/usr/lib/emu-ex-plus/msx
userdir=~/.emu-ex-plus/msx

if [[ ! -d ${userdir} ]] ; then
	mkdir -p "${userdir}"
fi

for i in "${emudir}"/* ; do
	filename=$(basename "$i")
	if [[ ! -r ${userdir}/${filename} ]] ; then
		ln -s "$i" "${userdir}/${filename}"
	fi
done

if [[ ! -d ${userdir}/MSX.emu/Machines ]] ; then
	mkdir -p "${userdir}/MSX.emu/Machines"
fi

"${userdir}"/msxemu "$@"

