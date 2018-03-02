#!/bin/bash
echo "enter numbers";
read n n1;
sum=`expr $n + $n1 `;
echo "the sum of the numbers is $sum";
sub=`expr $n - $n1 `;
echo "the subtraction of the numbers is $sub";
mul=`expr $n \* $n1 `;
echo "the multiplication of the numbers is $mul";
mod=`expr $n % $n1 `
echo "mod is $mod";
if [ $n1 -eq 0 ]
then
  echo "second argument is zero";
elif [ $n1 -gt 0 -o $n1 -lt 0 ]
then 
 div='expr $n / $n1 ';
 echo "the division of numbers is $div";
fi 

