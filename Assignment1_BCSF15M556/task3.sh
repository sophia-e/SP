#!/bin/bash
#islower()
function is_lower()
{
 name=$*
 echo "$name" | tr '[:upper:]' '[:lower:]'
}
function is_root()
{
 TRUE=0
 FALSE=1
  if [ $(id -u) -eq 0 ]
  then
    echo "script is execute by the root user"
    return $TRUE
  else
    echo "script is NOT executed by the root user"
    return $FALSE
  fi
}
function is_user_exists()
{
   TRUE=0
   FALSE=1
   #echo $1
   result=`cat /etc/passwd | grep "$1" ` 
   #echo $result
   if [ "$result" != "" ]
   then
     echo "user exists"
     return $TRUE
   else
     echo "doesnt exist"
     return $FALSE
   fi
   
}
if [ $# -eq 0 ]
then
   echo "no arguments passed"
 
else
   is_lower $*
   is_root 
   is_user_exists $1
fi


 

