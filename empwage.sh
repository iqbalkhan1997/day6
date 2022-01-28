#!/bin/bash -x

ispresent=1;
part_time=2;
pay_per_hr=20;
workingdays=20;

totalworkinghr=0;
for ((day=1;day<=$workingdays;day++))
do
	num=$((RANDOM%3));
		case $num in
			$ispresent)
				emphr=8;
				;;
			$part_time)
				emphr=4;
				;;
				*)
				emphr=0;
				;;
		esac;
	totalworkinghr=$(($totalworkinghr + $emphr));
	salary=$(($totalworkinghr * $pay_per_hr));
done
echo "Monthly wage is $salary";
