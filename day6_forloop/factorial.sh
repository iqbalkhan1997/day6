#!/bin/bash -x

read -p "Enter the number to print it's factorial : " num
y=1;
for((i=1;i<=$num;i++))
do
	x=$(( 1 * $i ));
	y=$(( $x * $y ));
done
echo "$num factorial is $y";
