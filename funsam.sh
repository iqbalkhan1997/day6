#!/bin/bash -x

function add() {
echo "$1 $2";
n=$1;
m=$2;
#read n m;
until [ $n -eq $m ]
	do
	sum=$(($n+$m));
	((n++))
	if [ $n -eq $m ]
		then
			echo "$sum";
	exit;
	fi
	done
echo "$sum";
}

addition=$(add 4 5);
echo $addition;
