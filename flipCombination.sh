#!/bin/bash -x
   #echo "Welcome To Flip Coin Problem"

flipCheck=$((RANDOM%2))

isHead=1

echo "Flipping Coin Value: "$flipCheck

if [ $flipCheck -eq $isHead ]
then
	echo " Head is Winner"
else
	echo " Tail is Winner"
fi
