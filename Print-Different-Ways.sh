#!/bin/bash

if [ $# != 1 ];
then
	echo "USAGE: $BASH_SOURCE <command>"
fi
case $1 in
	"exec" | "exe") ls -lh | grep -E "[d\-](([rw\-]{2})x){1,3}" | awk '{ printf "%s\n", $10; }' ;;
	"top3" | "t") ls -1S | head -n 3 ;;
	"print" | "p") ls -1 ;;
esac 