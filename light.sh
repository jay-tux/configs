# !/bin/bash

brightness=0
screen="eDP-1"

function getLast()
{
	if [[ -f ".save" ]]; then
		#current is available
		#read brightness from file
		brightness="$(cat ".save" | cut -d ' ' -f1)"
	else
		#current is not available
		#set current to 1
		touch ".save"
		echo 1 >".save"
		#set brightness to 1
		xrandr --output "$screen" --brightness 1
		brightness=1
	fi

	echo "Current brightness: $brightness"
}

getLast

if [[ $1 == "--inc" ]]; then
	#increase by .1
	echo "Increasing $brightness with 0.1 [if possible]"
	if [[ `echo "$brightness > 0.8" | bc -l` == 1 ]]; then
		echo "Edge case - setting to 1"
		brightness=1
	else
		brightness=`echo "$brightness+0.1" | bc -l`
	fi
	echo "New brightness value: $brightness"
	echo $brightness >".save"
elif [[ $1 == "--dec" ]]; then
	#decrease by .1
	echo "Decreasing $brightness with 0.1 [if possible]"
	if [[ `echo "$brightness < 0.2" | bc -l` == 1 ]]; then
		echo "Edge case - setting to 0"
		brightness=0
	else
		brightness=`echo "$brightness-0.1" | bc -l`
	fi
	echo "New brightness value: $brightness"
	echo $brightness >".save"
elif [[ $1 == "--set" ]]; then
	#set to $2
	echo "Setting brightness from $brightness to $2"
	brightness=$2
	echo "New brightness value: $brightness"
	echo $brightness >".save"
else
	#error
	echo "Error"
fi

xrandr --output "$screen" --brightness $brightness
