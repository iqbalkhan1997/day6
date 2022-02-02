#!/bin/bash -x

read -p "enter the number between (1 to 8) to print 2 to the power of ?": a

while [ $a -lt 9 ]
do
	c=$(( 2 ** $a));
	echo $c;
	((a++));
done
