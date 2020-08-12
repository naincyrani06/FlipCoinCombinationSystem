#!/bin/bash -x
   #echo "Welcome To Flip Coin Problem"
isHead=1
isTail=0
count_HH=0
count_HT=0

count_TH=0
count_TT=0

declare -A flippingCoin
declare -A percentageDoublet

for((i=1;i<=50;i++))
do
flipCheck1=$((RANDOM%2))
	flipCheck2=$((RANDOM%2))

	if [[ $flipCheck1 -eq $isHead && $flipCheck2 -eq $isHead ]]
	then
		count_HH=$((count_HH + 1))
	elif  [[ $flipCheck1 -eq $isHead && $flipCheck2 -eq $isTail ]]
        then
                count_HT=$((count_HT + 1))
	elif [[ $flipCheck1 -eq $isTail && $flipCheck2 -eq $isHead ]]
        then
                count_TH=$((count_TH + 1))
	else
 		count_TT=$((count_TT + 1))
	fi
done
flippingCoin[H H]=$count_HH

flippingCoin[H T]=$count_HT

flippingCoin[T H]=$count_TH
flippingCoin[T T]=$count_TT
for i in "${!flippingCoin[@]}"
do
	echo "$i:${flippingCoin[$i]}"
done
echo "Percentage of getting Head Head: "`awk "BEGIN {print ($count_HH/20)*100 }"`
echo "Percentage of getting Head Tail: "`awk "BEGIN {print ($count_HT/20)*100 }"`
echo "Percentage of getting Tail Head: "`awk "BEGIN {print ($count_TH/20)*100 }"`
echo "Percentage of getting Tail Tail: "`awk "BEGIN {print ($count_TT/20)*100 }"`

percentageDoublet[Head Head]=`awk "BEGIN {print ($count_HH/20)*100 }"`
percentageDoublet[Head Tail]=`awk "BEGIN {print ($count_HT/20)*100 }"`
percentageDoublet[Tail Head]=`awk "BEGIN {print ($count_TH/20)*100 }"`
percentageDoublet[Tail Tail]=`awk "BEGIN {print ($count_TT/20)*100 }"`
