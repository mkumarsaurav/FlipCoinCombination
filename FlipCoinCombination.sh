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

#Doublet Combination

declare -A HH
declare -A HT
declare -A TH
declare -A TT

HH[0]=0;
HT[0]=0;
TH[0]=0;
TT[0]=0;

for (( i=0 ; i<20 ; i++ ))
do
   toss1=$((RANDOM%2));
   toss2=$((RANDOM%2));
   if [ $toss1 -eq 0 -a $toss2 -eq 0 ]
   then
      TT[0]=$((${TT[0]}+1));
   elif [ $toss1 -eq 0 -a $toss2 -eq 1 ]
   then
      TH[0]=$((${TH[0]}+1));
   elif [ $toss1 -eq 1 -a $toss2 -eq 1 ]
   then
      HH[0]=$((${HH[0]}+1));
   elif [ $toss1 -eq 1 -a $toss2 -eq 0 ]
   then
      HT[0]=$((${HT[0]}+1));
   fi
done

echo "HH percentage: " $(((${HH[@]}*100)/20)) "%";
echo "HT percentage: " $(((${HT[@]}*100)/20)) "%";
echo "TH percentage: " $(((${TH[@]}*100)/20)) "%";
echo "TT percentage: " $(((${TT[@]}*100)/20)) "%";

#Triplet Combination

declare -A HHH
declare -A HHT
declare -A HTH
declare -A THH
declare -A TTT
declare -A TTH
declare -A THT
declare -A HTT

HHH[0]=0;
HHT[0]=0;
HTH[0]=0;
THH[0]=0;
TTT[0]=0;
TTH[0]=0;
THT[0]=0;
HTT[0]=0;

for (( i=0 ; i<20 ; i++ ))
do
   toss1=$((RANDOM%2));
   toss2=$((RANDOM%2));
	toss3=$((RANDOM%2));
   if [ $toss1 -eq 0 -a $toss2 -eq 0 -a $toss3 -eq 0 ]
   then
      TTT[0]=$((${TTT[0]}+1));
	elif [ $toss1 -eq 0 -a $toss2 -eq 0 -a $toss3 -eq 1 ]
   then
      TTH[0]=$((${TTH[0]}+1));
   elif [ $toss1 -eq 0 -a $toss2 -eq 1 -a $toss3 -eq 0 ]
   then
      THT[0]=$((${THT[0]}+1));
   elif [ $toss1 -eq 0 -a $toss2 -eq 1 -a $toss3 -eq 1 ]
   then
      THH[0]=$((${THH[0]}+1));
   elif [ $toss1 -eq 1 -a $toss2 -eq 1 -a $toss3 -eq 1 ]
   then
      HHH[0]=$((${HHH[0]}+1));
   elif [ $toss1 -eq 1 -a $toss2 -eq 1 -a $toss3 -eq 0 ]
   then
      HHT[0]=$((${HHT[0]}+1));
   elif [ $toss1 -eq 1 -a $toss2 -eq 0 -a $toss3 -eq 1 ]
   then
      HTH[0]=$((${HTH[0]}+1));
   elif [ $toss1 -eq 1 -a $toss2 -eq 0 -a $toss3 -eq 0 ]
   then
      HTT[0]=$((${HTT[0]}+1));
   fi
done

echo "HHH percentage: " $(((${HHH[@]}*100)/20)) "%";
echo "HHT percentage: " $(((${HHT[@]}*100)/20)) "%";
echo "HTH percentage: " $(((${HTH[@]}*100)/20)) "%";
echo "THH percentage: " $(((${THH[@]}*100)/20)) "%";
echo "TTT percentage: " $(((${TTT[@]}*100)/20)) "%";
echo "TTH percentage: " $(((${TTH[@]}*100)/20)) "%";
echo "THT percentage: " $(((${THT[@]}*100)/20)) "%";
echo "HTT percentege: " $(((${HTT[@]}*100)/20)) "%";
