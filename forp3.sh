#!/bin/bash -x
read -p "enter the number to check whether it is prime or not: " a;

for ((i=2;i<=$a/2;i++))
do
fr=$(( $a % $i ));
	if [ $fr -eq 0 ];
	then
	echo $a is not a prime number
	exit;
fi;
#else
done
	echo $a is a prime number
#done

