# !/bin/bash

if [[ -f ".save" ]]; then
	val=`cat ".save"`
	val=`echo "$val * 100" | bc -l`
	echo "$val%"
else
	touch ".save"
	echo 1 >".save"
	xrandr --output "$screen" --brightness 1
	echo "100%"
fi
