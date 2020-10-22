#!/bin/bash -x
echo "Welcome to Flip Coin Combination Problem"
declare -A heads
declare -A tails

heads[0]=0;
tails[0]=0;

for (( i=0 ; i<20 ; i++ ))
do
	TossCheck=$((RANDOM%2));
	if [ $TossCheck -eq 0 ]
	then
		echo Tails;
		tails[0]=$((${tails[0]}+1));
	else
		echo Heads;
		heads[0]=$((${heads[0]}+1));
	fi
done

echo "Heads: " ${heads[@]};
echo "Tails: " ${tails[@]};

echo "Percentage of Heads: " $(((${heads[@]}*100)/20)) "%";
echo "Percentage of Tails: " $(((${tails[@]}*100)/20)) "%";
