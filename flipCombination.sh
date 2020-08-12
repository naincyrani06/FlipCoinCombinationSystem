#!/bin/bash -x
   #echo "Welcome To Flip Coin Problem"
isHead=1
isTail=0
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
		count_HTT=$((count_HTT + 1))
		elif [[ $coinCheck1 -eq $isTail && $ coinCheck2-eq $isHead && $ coinCheck3-eq $isHead ]]
        then
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
coinCheck[H H H]=$count_HHH

coinCheck[H H T]=$count_HHT

coinCheck[H T H]=$count_HTH

coinCheck[H T T]=$count_HTT

coinCheck[T H H]=$count_THH
coinCheck[T H T]=$count_THT
coinCheck[T T H]=$count_TTH
coinCheck[T T T]=$count_TTT
for i in "${!coinCheck[@]}"
do
echo "$i:${coinCheck[$i]}"
done
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

