#!/bin/bash -x

ftime=1;
ptime=2;
emp_rt_p_hr=20;
total_wd=20;
Monthly_Salary=0;

for ((day=1;day<=$total_wd;day++))
do
	x=$((RANDOM%3));
	#echo $x
	case $x in
		$ftime)
			emphr=8;
			;;
		$ptime)
			emphr=4;
			;;
		*)
			emphr=0;
			;;
	esac;
	salary=$(($emp_rt_p_hr*$emphr));
Monthly_Salary=$(($salary+$Monthly_Salary));
done
echo monthly salary is $Monthly_Salary;
