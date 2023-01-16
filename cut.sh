#!/bin/bash

df -H | awk '{print $1 " " $4} | cut -d'%' -f1}
do 

usage=$(echo $output | awk '{print $1}' | cut -d'%' -f1)

file_sys=$(echo $output | awk '{print $2}')

if [ $usage -ge 80 ]
then

	echo "It  is critical for $file_sys"

fi 

done
