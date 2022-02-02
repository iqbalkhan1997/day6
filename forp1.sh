#!/bin/bash -x

read -p "Enter the number to get the value for 2^?: " n;
for ((i=1;i<=$n;i++));
 do
 raise=$(( 2 ** $i ));
done
echo "2 ^ $n is $raise";
