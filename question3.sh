#!/bin/bash

UNIX=('Debian' 'Red Hat' 'Ubuntu' 'Suse' 'Fedora');
echo ${UNIX[@]}
echo ${#UNIX[@]}
echo ${#UNIX[2]}
echo ${UNIX[*]:3:5}

echo ${UNIX[@]/Ubuntu/SCO Unix}

unix[5]=AIX
unix[6]=HP-UX
echo ${UNIX[*]}
unset UNIX[3]
$LINUX=()
LINUX=( ${UNIX[@]})
BASH=( ${LINUX[@]}  ${UNIX[@]} )
unset LINUX
unset UNIX
