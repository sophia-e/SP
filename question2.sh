#!/bin/bash

if [ $# -eq 2 ]
then
f1=(`ls -li $1`) 
  if [ ${f1[2]} = $2 ]
  then
    echo "Cheating = 0"
  else
    echo "Cheating = 1"
  fi
fi

if [ $# -eq 5 ] && [ $1 = '-c' ]
then
 f1=(`ls -li $2`)
 f2=(`ls -li $4`)
elif [ $3 != $5 ] && [ ${f1[2]} != ${f2[2]} ]
then
   echo "Cheating = 0"
else
   echo `diff -c $2 $4`
n=`diff -c $2 $4 | wc -w`

if [ $n -eq 0 ]
then
  echo "Cheating = 1"
else
  echo "Cheating = 0"
fi
 echo `cat $2`
 echo `cat $4`
fi
fi
