#!/bin/bash -x

function palin() {
read -p "enter the number to check if it is palindrome or not : " n;
temp=$n;
reverse=0;
while [ $n -gt 0 ]
do
a=$(($n%10)); #will get reminder
n=$(($n/10)); #will get quotient
#r="$a$b";
reverse=$((($reverse*10) + $a));
done
echo $reverse;
if [ $temp -eq $reverse ]
then
	echo "entered number is palindrome";
else
	echo " entered number is not a palindrome ":
fi
}
palindrome=$(palin);
echo "$palindrome"
