#!/bin/bash

num1=$1
operator=$2
num2=$3

if [ "$operator" = '+' ]; then
	result=$((num1 + num2))
	echo "$result"
elif [ "$operator" = '-' ]; then
	result=$((num1 - num2))
	echo "$result"
else
	echo "유효하지 않은 연산자입니다."
fi

exit 0
