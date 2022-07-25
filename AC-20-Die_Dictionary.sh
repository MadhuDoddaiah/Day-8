#!/bin/bash -x

echo "Toss the dice"

n1=0
n2=0
n3=0
n4=0
n5=0
n6=0

toss=1


while [[ ($n1 -lt 10) && ($n2 -lt 10) && ($n3 -lt 10) && ($n4 -lt 10) && ($n5 -lt 10) && ($n6 -lt 10) ]]
do
		random=$(($RANDOM%6 + 1))
		dice[toss++]=$random

		case $random in
					1)
						n1=$(($n1 + 1))
					;;
					2)
						n2=$(($n2 + 1))
					;;
					3)
						n3=$(($n3 + 1))
					;;
					4)
						n4=$(($n4 + 1))
					;;
					5)
						n5=$(($n5 + 1))
					;;
					6)
						n6=$(($n6 + 1))
					;;
		esac
done

if (($n1==10))
then
	echo " 1 reached count 10 "
elif (($n2==10))
then
	echo " 2 reached count 10"
elif (($n3==10))
then
        echo " 3 reached count 10 "
elif (($n4==10))
then
        echo " 4 reached count 10 "
elif (($n5==10))
then
        echo " 5 reached count 10 "
elif (($n6==10))
then
        echo " 6 reached count 10 "
fi

echo ${!dice[@]}
echo ${dice[@]}
