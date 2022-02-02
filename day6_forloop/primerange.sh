#!/bin/bash -x

read -p "enter the number to print range of prime numbers : " num;
for ((j=2;j<=$num;j++))
do
	isprime=1;
for ((i=2;i<=$j/2;i++))
	do
	if [ $(($j%$i)) -eq 0 ]
		then
			isprime=0;
			break;
		fi
	done
	if [ $isprime -eq 1 ]
	then
		echo $j;
	fi
done
