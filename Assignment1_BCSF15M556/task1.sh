#!/bin/bash

#ls -l | wc -l 
for i in `ls`
do
#echo $i
#j="*txt"
j="*.txt"
k="*.doc"
z="*.sh"
m="*.tar"
n="*.mp4"
o="*.mp3"
echo $i
  if [ "$i" = `echo $j` ]
  then
  
     if [ -d  "txt" ]
     then
       mv $i ./txt
       echo "moved1"
     elif [ ! -d "txt" ]
     then
       mkdir -p ./txt
       mv $i txt
       echo "moved2"
     fi

  elif [ "$i" = `echo $k` ]
  then
 
     if [ -d  "doc" ]
     then
       mv $i ./doc
       echo "moved1"
     elif [ ! -d "doc" ]
     then
       mkdir -p ./doc
       mv $i doc
       echo "moved2"
     fi   

 elif [ "$i" = `echo $z` ]
  then
 
     if [ -d  "sh" ]
     then
       mv $i ./sh
       echo "moved1"
     elif [ ! -d "sh" ]
     then
       mkdir -p ./sh
       mv $i sh
       echo "moved2"
     fi 



elif [ "$i" = `echo $m` ]
  then
 
     if [ -d  "tar" ]
     then
       mv $i ./tar
       echo "moved1"
     elif [ ! -d "tar" ]
     then
       mkdir -p ./tar
       mv $i tar
       echo "moved2"
     fi   

elif [ "$i" = `echo $n` ]
  then
 
     if [ -d  "mp4" ]
     then
       mv $i ./mp4
       echo "moved1"
     elif [ ! -d "mp4" ]
     then
       mkdir -p ./mp4
       mv $i mp4
       echo "moved2"
     fi   


elif [ "$i" = `echo $o` ]
  then
 
     if [ -d  "mp3" ]
     then
       mv $i ./mp3
       echo "moved1"
     elif [ ! -d "mp3" ]
     then
       mkdir -p ./mp3
       mv $i mp3
       echo "moved2"
     fi   




   else
     echo "oops"
   fi
done

