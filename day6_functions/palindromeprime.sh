#!/bin/bash -x

read -p "enter the number to check whether it is prime or not: " a
b=$a;
temp=$b
rev=0;

function prime() {
#read -p "enter the number to check whether it is prime or not: " a
for ((i=2;i<=$a/2;i++))
do
	if [ $(( $a % $i )) -eq 0 ]
		then
		echo "$a is not a prime number";
		exit;
	fi
done
echo "$a is a prime number";
}

pri=$(prime);
echo "$pri";

#checking palindrome

function palindrome() {
while [ $b -gt 0 ]
do

rem=$(($b%10));
b=$(($b/10));
rev=$((($rev*10) + $rem));
done
echo "reverse number of $temp is $rev";
	if [ $temp -eq $rev ]
		then
	echo "Entered number $temp is a palindrome";
	else
	echo "Entered number is not a palindrome";
fi
	
}



function palipri() {
	#if [ $temp -eq $rev ]
	 #then
		for ((j=2;j<=$rev/2;j++))
         do
            if [ $(($rev%$j)) -eq o ]
               then
               echo "palindrome number $rev is not a prime number";
               exit;
            fi;
         done
            echo "palindrome number $rev is a prime number";
	#else
		#echo "palindrome number $rev is a prime number";
#fi;
}


pali=$(palindrome);
echo "$pali";


pp=$(palipri);
echo "$pp";
