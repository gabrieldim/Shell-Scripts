#!/bin/bash

if [ $# -ne 3 ]
then

    	echo "USAGE: ./z1.sh <number> <op> <number>"
        exit 1;
fi

number1=$1
operation=$2
number2=$3

echo $(( $number1 $operation $number2))

