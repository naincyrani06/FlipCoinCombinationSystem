#!/bin/bash -x
echo "Welcome To Flip Coin Problem"

isHead=1
isTail=0
#For singlet
flipCheck=$((RANDOM%2))
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

echo "Flipping Coin Value: "$flipCheck
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

#For doublet
count_HH=0
count_HT=0

declare -A flipCheck
declare -A flipCheckSinglet
declare -A percentSingletDictionary
count_TH=0
count_TT=0

isHead=1
for((i=1;i<=70;i++))
declare -A flippingCoin
declare -A percentageDoublet

for((i=1;i<=50;i++))
do
	flipCheck=$((RANDOM%2))
	if [ $flipCheck -eq $isHead ]
flipCheck1=$((RANDOM%2))
	flipCheck2=$((RANDOM%2))

	if [[ $flipCheck1 -eq $isHead && $flipCheck2 -eq $isHead ]]
	then
		countHead=$((countHead + 1))
		count_HH=$((count_HH + 1))
	elif  [[ $flipCheck1 -eq $isHead && $flipCheck2 -eq $isTail ]]
        then
                count_HT=$((count_HT + 1))
	elif [[ $flipCheck1 -eq $isTail && $flipCheck2 -eq $isHead ]]
        then
                count_TH=$((count_TH + 1))
	else
                countTail=$((countTail + 1))
 		count_TT=$((count_TT + 1))
	fi
done
flippingCoin[H H]=$count_HH

flipCheck[Head]=$countHead
flipCheckSinglet[Head]=$countHead
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
percentageDoublet[Head Head]=`awk "BEGIN {print ($count_HH/20)*100 }"`
percentageDoublet[Head Tail]=`awk "BEGIN {print ($count_HT/20)*100 }"`
percentageDoublet[Tail Head]=`awk "BEGIN {print ($count_TH/20)*100 }"`
percentageDoublet[Tail Tail]=`awk "BEGIN {print ($count_TT/20)*100 }"`

#For Triplet
declare -A flippingCoin
declare -A percentageDoublet

for((i=1;i<=50;i++))
count_HHH=0
count_HHT=0
count_HTH=0
count_HTH=0
count_THH=0
count_THT=0
count_TTH=0
count_TTT=0
declare -A coinCheck
declare -A percentCoinCheck
for((i=1;i<=20;i++))
do
flipCheck1=$((RANDOM%2))
	flipCheck2=$((RANDOM%2))

	if [[ $flipCheck1 -eq $isHead && $flipCheck2 -eq $isHead ]]
	then
		count_HH=$((count_HH + 1))
	elif  [[ $flipCheck1 -eq $isHead && $flipCheck2 -eq $isTail ]]
       coinCheck1=$((RANDOM%2))
        coinCheck2=$((RANDOM%2))
        coinCheck3=$((RANDOM%2))
	   if [[ $coinCheck1-eq $isHead && $coinCheck2-eq $isHead && $coinCheck3 -eq $isHead ]]
       	then
               count_HHH=$((count_HHH+ 1))
	elif [[ $coinCheck1-eq $isHead && $  coinCheck2-eq $isHead && $coinCheck3-eq $isTail ]]
       	then
               count_HHT=$((count_HHT + 1))
       	elif [[ $coinCheck1-eq $isHead && $ coinCheck2-eq $isTail && $ coinCheck3-eq $isHead ]]
		      count_HTH=$((count_HTH + 1))
	elif [[ $coinCheck1 -eq $isHead && $ coinCheck2-eq $isTail && $-coinCheck3 eq $isTail ]]
        then
                count_HT=$((count_HT + 1))
	elif [[ $flipCheck1 -eq $isTail && $flipCheck2 -eq $isHead ]]
		count_HTT=$((count_HTT + 1))
		elif [[ $coinCheck1 -eq $isTail && $ coinCheck2-eq $isHead && $ coinCheck3-eq $isHead ]]
        then
                count_TH=$((count_TH + 1))
	else
 		count_TT=$((count_TT + 1))
	fi
                count_THH=$((count_THH+ 1))
	elif [[ $coinCheck1-eq $isTail && $ coinCheck2 -eq $isHead && $coinCheck3-eq $isTail ]]
        then
                count_THT=$((count_THT + 1))
	elif [[ $coinCheck1-eq $isTails && $ coinCheck2 -eq $isTail && $coinCheck3 -eq $isHead ]]
        then
                count_TTH=$((count_TTH + 1))
       	else
        	count_TTT=$((count_TTT+ 1))
       	fi
done
flippingCoin[H H]=$count_HH
coinCheck[H H H]=$count_HHH

coinCheck[H H T]=$count_HHT

flippingCoin[H T]=$count_HT
coinCheck[H T H]=$count_HTH

flippingCoin[T H]=$count_TH
flippingCoin[T T]=$count_TT
for i in "${!flippingCoin[@]}"
coinCheck[H T T]=$count_HTT

coinCheck[T H H]=$count_THH
coinCheck[T H T]=$count_THT
coinCheck[T T H]=$count_TTH
coinCheck[T T T]=$count_TTT
for i in "${!coinCheck[@]}"
do
	echo "$i:${flippingCoin[$i]}"
echo "$i:${coinCheck[$i]}"
done
echo "Percentage of getting Head Head: "`awk "BEGIN {print ($count_HH/20)*100 }"`
echo "Percentage of getting Head Tail: "`awk "BEGIN {print ($count_HT/20)*100 }"`
echo "Percentage of getting Tail Head: "`awk "BEGIN {print ($count_TH/20)*100 }"`
echo "Percentage of getting Tail Tail: "`awk "BEGIN {print ($count_TT/20)*100 }"`

percentageDoublet[Head Head]=`awk "BEGIN {print ($count_HH/20)*100 }"`
percentageDoublet[Head Tail]=`awk "BEGIN {print ($count_HT/20)*100 }"`
percentageDoublet[Tail Head]=`awk "BEGIN {print ($count_TH/20)*100 }"`
percentageDoublet[Tail Tail]=`awk "BEGIN {print ($count_TT/20)*100 }"`
	echo "Percentage of getting (Heads Heads Heads): "`awk "BEGIN {print ($count_HHH/20)*100 }"`

	echo "Percentage of getting (Heads Heads Tails): "`awk "BEGIN {print ($count_HHT/20)*100 }"`

	echo "Percentage of getting (Heads Tails Heads): "`awk "BEGIN {print ($count_HTH/20)*100 }"`

	echo "Percentage of getting (Heads Tails Tails): "`awk "BEGIN {print ($count_HTT/20)*100 }"`

	echo "Percentage of getting (Tails Heads Heads): "`awk "BEGIN {print ($count_THH/20)*100 }"`

	echo "Percentage of getting (Tails Heads Tails): "`awk "BEGIN {print ($count_THT/20)*100 }"`

	echo "Percentage of getting (Tails Tails Heads): "`awk "BEGIN {print ($count_TTH/20)*100 }"`

	echo "Percentage of getting (Tails Tails Tails): "`awk "BEGIN {print ($count_TTT/20)*100 }"`


percentCoinCheck[H H H]=`awk "BEGIN {print ($count_HHH/20)*100 }"`
percentCoinCheck[H H T]=`awk "BEGIN {print ($count_HHT/20)*100 }"`
percentCoinCheck[H T H]=`awk "BEGIN {print ($count_HTH/20)*100 }"`
percentCoinCheck[H T T]=`awk "BEGIN {print ($count_HTT/20)*100 }"`
percentCoinCheck[T H H]=`awk "BEGIN {print ($count_THH/20)*100 }"`
percentCoinCheck[T H T]=`awk "BEGIN {print ($count_THT/20)*100 }"`
percentCoinCheck[T T H]=`awk "BEGIN {print ($count_TTH/20)*100 }"`
percentCoinCheck[T T T]=`awk "BEGIN {print ($count_TTT/20)*100 }"`
#ISinglet Combination
for m in "${!percentSingletDictionary[@]}"
do
        if [ $maximum1 -le ${percentSingletDictionary[$m]} ]
        then
                maximumSinglet=$m
                maximum1=${percentSingletDictionary[$m]}
        fi
done
for m in "${!percentSingletDictionary[@]}"
do
        if [ $maximum1 -eq ${percentSingletDictionary[$m]} ]
        then
                echo $m
		winningCombination[((winningCombinationCount++))]=$m
		winningCombination1[((winningCombinationCount++))]=$maximum1
        fi
done

#Doublet Combination
for m in "${!percentageDoublet[@]}"
do
        if [ $maximum2 -le ${percentageDoublet[$m]} ]
        then
                maximumDoublet=$m
                maximum2=${percent_doublet_dict[$m]}
        fi
done
for m in "${!percentageDoublet[@]}"
do
        if [ $maximum2 -eq ${percentageDoublet[$m]} ]
        then
                echo $m
		winningCombination[((winningCombinationCount++))]=$m
                winningCombination1[((winningCombinationCount++))]=$maximum2
        fi
done

#Triplet Combination
for m in "${!percentCoinCheck[@]}"
do
        if [ $maximumTriplet -le ${percentCoinCheck[$m]} ]
        then
		        maximumTriplet=$m
                maximum3=${percentCoinCheck[$m]}
        fi
done
for m in "${!percent_triplet_dict[@]}"
do
	if [ $maximum3 -eq ${percentCoinCheck[$m]} ]
        then
		echo $m
		       winningCombination[((winningCombinationCount++))]=$m
               winningCombination1[((winningCombinationCount++))]=$maximum3

	fi
done
winningCombination=0
winningCombinationMax=${winningCombination1[0]}

for((n=0;i<${#winningCombination1[@]};n++))
do
	if [ $winningCombinationMax -le ${winningCombination1[(n++)]} ]
        then
		winningCombination=${winningCombination[n]}
		winningCombinationMax=${winning[Combination1(n++)]}
	fi
done
echo "$winningCombinationMax have the maximum Percent."




































