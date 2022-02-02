#!/bin/bash -x

#call this function to execute 1st expression;
function degC2F() {
        read -p "enter the value (between 0 to 100) to convert from celcius to fahrenheits: " a;
	while [[ $a -ge 0 && $a -le 100 ]]
	do
	if [[ $a -ge 0 && $a -le 100 ]]
        then
	div95=`echo 9 5 | awk '{print $1/$2}'`;
        deg=`echo $a $div95 | awk '{print $1*$2}'`;
        degF=`echo $deg 32 | awk '{print $1+$2}'`;
	echo "$a celcius is $degF fahrenheits"
	exit;
	fi
done
	echo "please enter the value between 0 to 100"
}

#call this function to execute 2nd expression;
function degF2C() {
	read -p "enter the value (between 32 to 212) to conver from fahrenheits to celcius: " a;
	while [[ $a -ge 32 && $a -le 212 ]]
	do
	if [[ $a -ge 32 && $a -le 212 ]]
	then
	div59=`echo 5 9 | awk '{print $1/$2}'`;
        feh=`echo $a 32 | awk '{print $1-$2}'`;
        degC=`echo $feh $div59 | awk '{print $1*$2}'`;
	echo "$a fahrenheits is $degC celcius"
	exit;
	fi
done
echo "please enter the value between 32 to 212"
}

echo "1.degF to degC"
echo "2.degC to degF"
read -p "enter the number from above to perform the expression : " n
case $n in
	1)
	fahren=$(degC2F);
	echo $fahren;
	;;
	2)
	celcius=$(degF2C);
	echo $celcius;
	;;
	*)
	echo "invalid expression number"
esac;

