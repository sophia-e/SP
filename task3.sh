#!/bin/bash
function showAllOwner()
{
username=` echo $1`
  for i in `ls` 
  do 
    if [ -f $i ] 
    then 
       set `ls -li $i`
         if [ "$username"="$4" ]
	 then
         
	    echo "File-name: $i | File-type:`file $i` | File-owner: $4" | grep "$username"
				
	  fi
     fi
done		
}


if [ $# -eq 0 ]
then 
   echo "No arguments passed"
   exit 0
elif [ $# -gt 1 ]
then 
   echo "only one argument passed"
   exit 1
elif [ $# -eq 1 ]
then
   showAllOwner $1
else
   echo "byee"
fi
