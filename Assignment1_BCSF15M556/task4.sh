#!/bin/bash
file=$1
counter=0
 
if [ $# -ne 1 ]
then
	echo "$0 fileName"
	exit 1
elif [ ! -f $file ]
then
	echo "$file not a file"
	exit 2
fi
if [ -f $file ]
then
   #result=`sort $file  | uniq -u 1>file`
   result=`sort $file  | uniq -u  `
   echo $result > $file
fi


