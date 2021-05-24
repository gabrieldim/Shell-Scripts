#!/bin/bash

current_date=`date | awk '{split($4, arr, ":"); print arr[3]}'`
while [ $current_date != "00" ]
do
	date
	current_date=`date | awk '{split($4, arr, ":"); print arr[3]}'`
	sleep 1
done

minuta=`date | awk '{split($4, arr, ":"); print arr[2]}'`
echo Tochno e ${minuta}-ta minuta.