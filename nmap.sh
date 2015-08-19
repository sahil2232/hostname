#!/bin/bash
var=$2
while [ $var -le $3 ]
do 
c=$1$var
d=`host $c`
e=($d)
if [ ${e[2]} != "not" ]
then 
printf "%s  " $c
echo ${e[4]}
fi
var=$((var+1))
done
