#!/bin/bash

alert=20

backup_date=$(date +'%m/%d/%Y')
df -H | awk '{print $5 " " $1}' | while read output;

do
usage =$(echo $output | awk '{print $1}' | cut -d'%' -f1)
file_sys=$(echo $output | awk '{print $2}')

if [ $usage -ge $alert ]
then
        echo "My critical resource for $file_sys on $backup_date"
fi
done
