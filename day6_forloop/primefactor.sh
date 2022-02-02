#!/bin/bash -x

read -p "Enter the number to get prime factor : " n;

for ((j=2;j<=$n;j++))
do
	if [ $(($n%$j)) -eq 0 ]
	then
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
			echo "prime factor is $j";
		fi
	fi
done
