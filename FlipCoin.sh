#!/bin/bash -x

head=0
tail=0
while [ $head -le 21 ] && [ $tail -le 21 ]
do
        result=$(($RANDOM%2))
        if [ $result -eq 1 ]
        then
                head=$(($head+1))
        else
                tail=$(($tail+1))
        fi
		if [ $head -eq $tail ]
		then
			echo "match tie"
		else
			echo "No.of heads= $head"
			echo "No.of tails= $tail"
			if [ $head -gt $tail ]
			then
				echo "head won"
				win=$(($head-$tail))
				echo "head won by $win"
			else
				echo "tail won"
				win=$(($tail-$head))
				echo "tail won by $win"
			fi
		fi
done
