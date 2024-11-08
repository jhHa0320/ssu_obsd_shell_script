#!/bin/bash
	
name=$1
phone=$2

if [ ! -f DB.txt ]; then
    touch DB.txt
fi

echo "$name $phone" >> DB.txt

exit 0
