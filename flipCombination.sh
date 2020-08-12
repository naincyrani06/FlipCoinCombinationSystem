#!/bin/bash -x
   #echo "Welcome To Flip Coin Problem"

declare -A flipCheck
declare -A flipCheckSinglet
declare -A percentSingletDictionary

isHead=1
for((i=1;i<=70;i++))
do
	flipCheck=$((RANDOM%2))
	if [ $flipCheck -eq $isHead ]
	then
		countHead=$((countHead + 1))
	else
                countTail=$((countTail + 1))
	fi
done

flipCheck[Head]=$countHead
flipCheckSinglet[Head]=$countHead

flipCheck[Tail]=$countTail
flipCheckSinglet[Tail]=$countTail
echo "Head is :${flipCheck[Head]}"
echo "Head is :${flipCheckSinglet[Head]}"
echo "Tail :${flipCheck[Tail]}"
echo "Tail :${flipCheckSinglet[Tail]}"
echo "Percentage of getting Head : "`awk "BEGIN {print ($countHead/20)*100 }"`
echo "Percentage of getting Tail : "`awk "BEGIN {print ($countTail/20)*100 }"`
percentSingletDictionary[Head]=`awk "BEGIN {print ($countHead/20)*100 }"`
percentSingletDictionary[Tail]=`awk "BEGIN {print ($countTail/20)*100 }"`
