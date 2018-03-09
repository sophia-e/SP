#!/bin/bash
echo "enter name of the running process"
read n
set `pidof $n`
echo "PID :$2"
echo "Name : $n "

cd /proc/$2/
cat status | grep "PPid"
cat status | grep "State"

