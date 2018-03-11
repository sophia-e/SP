#!/bin/bash
if [ ! -f $1 ]
then
	echo "$1 not a file"
	exit 1
fi

if [ $# -ne 1 ]
then
	echo "$0 fileName"
	exit 0
fi

 
while read row
do
	
        counter=`expr $counter + 1 `
        even=`expr $counter % 2 `

	if [ $even -eq 0 ] 
	then
		echo $row >> evenfile 
	else
		echo $row >> oddfile
	fi

done < $1
