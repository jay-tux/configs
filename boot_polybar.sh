#!/bin/bash

killall polybar
NOW=$(date +%m)

HALLOWEEN=10

if (($NOW==1)) || (($NOW==2))
then
	echo "Starting winter bar"
	polybar winter &
elif (($NOW==3)) || (($NOW==5))
then
	echo "Starting spring bar"
	polybar spring &
elif (($NOW==4))
then
	echo "Starting easter bar"
	polybar easter &
elif (($NOW==6)) || (($NOW==7)) || (($NOW==8))
then
	echo "Starting summer bar"
	polybar summer &
elif (($NOW==9))
then
	echo "Starting autumn bar"
	polybar autumn &
elif (($NOW==10))
then
	echo "Starting halloween bar"
	polybar halloween &
elif (($NOW==11))
then
	echo "Starting death bar"
	polybar death &
elif (($NOW==12))
then
	echo "Starting xmas bar"
	polybar xmas &
else
	echo "Starting normal bar"
	polybar normal &
fi

polybar news &
