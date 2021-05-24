#!/bin/bash

file1=$1
file2=$2
file3=$3
size1=`wc -c $file1 | awk '{print $1;}'`
size2=`wc -c $file2 | awk '{print $1;}'`
size3=`wc -c $file3 | awk '{print $1;}'`

if [ $size1 -gt $size2 ]
then 
	tmp=$size2
	size2=$size1
	size1=$tmp

	tmp=$file2
	file2=$file1
	file1=$tmp
fi

if [ $size2 -gt $size3 ]
then
    	tmp=$size3
        size3=$size2
        size2=$tmp

        tmp=$file3
        file3=$file2
        file2=$tmp
fi

if [ $size1 -gt $size2 ]
then
    	tmp=$size2
        size2=$size1
        size1=$tmp



        tmp=$file2
        file2=$file1
        file1=$tmp
fi

echo 1\. $file1 \($size1 bytes\) echo 2\. $file2 \($size2 bytes\) echo 3\. $file3 \($size3 bytes\)



