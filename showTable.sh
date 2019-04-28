#!/bin/bash

function f()
{
  
  for i in `seq 1 10`
  do
    echo "$1 \* $i = ` expr $1 \* $i`"
  done 
}
function f2()
{
   for i in `seq $2 10`
  do
    echo "$1 \* $i = ` expr $1 \* $i`"
  done 
}
function f3()
{
   for i in `seq 1 $2`
  do
    echo "$1 \* $i = ` expr $1 \* $i`"
  done 
}
function f4()
{
   for i in `seq $2 $3`
  do
    echo "$1 \* $i = ` expr $1 \* $i`"
  done 
}
function f5()
{
  num=$3
  until [ $num -eq $2 ]
  do 
    echo " $1 \* $num = ` expr $1 \* $num`"
    num=`expr $num - 1 `
  done
}

if [ $# -eq 0 ]
then
  echo "no arguments given. bye!"
x= `expr $* + 1 `

elif [ $# -gt 6 ]
then 
  echo "greater than 6. bye! "
elif [ $# -eq 1 ]
then 
   f $1
elif [ $# -eq 3  ]
then
   if [ "$2" = "-s" ]
   then 
     f2 $1 $3
   elif [ "$2" = "-e" ]
   then 
     f3 $1 $3
   else
    exit 0
   fi
elif [ $# -eq 5 ]
then 
  if [ "$2" = "-s" -a "$4" = "-e" ]
  then 
    f4 $1 $3 $5
  fi
elif [ $# -eq 6 ]
then
  if [ "$2" = "-s" -a "$4" = "-e" -a "$6" = "-r" ]
  then
    f5 $1 $3 $5
  fi
else
  echo "byee"
fi
