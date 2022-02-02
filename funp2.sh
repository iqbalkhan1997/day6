#!/bin/bash -x

read -p "enter the first number to check whether it is palindrome or not : " n1
read -p "enter the second number to check whether it is palindrome or not : " n2
#temp1=$n1;
#temp2=$n2;
rev1=0;
rev2=0;

function first() {
	echo "first number entered is $n1";
temp1=$n1;

while [ $n1 -gt 0 ]
do
a1=$(($n1%10));
n1=$(($n1/10));

rev1=$((($rev1 * 10) + $a1));
done
echo "$rev1";

if [ $temp1 -eq $rev1 ];
then
echo "first number is a palindrome"
else
echo "first number is not a palindrome"
fi;
}

pali1=$(first);
echo "$pali1";


function second() {
	echo "second number entered is $n2";
temp2=$n2;

while [ $n2 -gt 0 ]
do
a2=$(($n2%10));
n2=$(($n2/10));

rev2=$((($rev2 * 10) + $a2));
done
echo "$rev2";

if [ $temp2 -eq $rev2 ];
then
echo "second number is a palindrome"
else
echo "second number is not a palindrome"
fi;
}

pali2=$(second);
echo "$pali2";
