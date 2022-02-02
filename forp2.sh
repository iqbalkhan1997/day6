#!/bin/bash -x
read -p "enter the harmonic number : " n
echo $n;
for ((i=1;i<=$n;i++))
do
b=`echo $i | awk '{print 1/$i}'`;
echo $b;
c=`echo 0 $b | awk '{print $1+$2}'`;
d=`echo $c $d | awk '{print $1+$2}'`;
done
echo "harmonic series is " $d
