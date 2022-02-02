#!/bin/bash -x
rs=100;
#won=0;
bet=1;
while [ $bet -le 100000 ]
do
x=$((RANDOM%2));
	if [ $x -eq 1 ]
		then
		echo "won $rs"
		((rs++))
	fi
	if [ $rs -eq 200 ]
		then
		echo "winner with rupees $rs"
		echo "number of bets $bet"
		exit;
	fi
	
	if [ $x -eq 0 ]
		then
		((rs--));
		echo "loss $rs"
	fi
	if [ $rs -eq 0 ]
	then
	echo "lost with rupees $rs"
	echo "number of bets $bet"
		exit;
	fi
	((bet++))
done
