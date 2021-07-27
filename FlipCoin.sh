#!/bin/bash -x
read -p "Enter how many times you want to flip coin: " num
head=0
tail=0
for((i=1; i<=$num; i++))
do
result=$(($RANDOM%2))
if [ $result -eq 1 ]
then
	echo "Its head"
	head=$(($head+1))
else
	echo "Its tail"
	tail=$(($tail+1))
fi
done
echo "no.of head= $head"
echo "no.of tail= $tail"

