#!/bin/bash -x

head=0
tail=0
while [ $head -le 21 ] && [ $tail -le 21 ]
do
        flip=$(($RANDOM%2))
        if [ $flip -eq 1 ]
        then
                head=$(($head+1))
        else
                tail=$(($tail+1))
        fi
		if [ $head -eq $tail ]
		then
			echo "match tie"
			continue
		else
			echo "No.of heads= $head"
			echo "No.of tails= $tail"
			if [ $head -gt $tail ]
			then
				echo "head won"
				win=$(($head-$tail))
                                if [ $win -ge 2 ]
                                then
				echo "head won by $win"
                                break
                                fi
			else
				echo "tail won"
				win=$(($tail-$head))
                                if [ $win -ge 2 ]
                                then
				echo "tail won by $win"
                                break
                                fi
			fi
		fi
done
