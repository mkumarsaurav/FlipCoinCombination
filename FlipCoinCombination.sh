#!/bin/bash -x
echo "Welcome to Flip Coin Combination Problem"
TossCheck=$((RANDOM%2));
if [ $TossCheck -eq 0 ];
then
	echo Tails Win;
else
	echo Heads Win;
fi
