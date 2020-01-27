# !/bin/bash

if [[ ! -d $HOME/.polynews/ ]]; then
	mkdir $HOME/.polynews/
fi

if [[ $# = 0 ]]; then file="$HOME/.polynews/news1.dat"; else file="$HOME/.polynews/news$1.dat"; fi
if [[ ! -f $HOME/.polynews/ind$1 ]]; then
	echo 1 >$HOME/.polynews/ind$1
fi
ind=`cat $HOME/.polynews/ind$1`

if [[ -f $file ]]; then
	if [[ -r $file ]]; then
		cat "$file" | head -n "$ind" | tail -n1
	else
		echo "Failed to read"
	fi
else
	echo "News site $1 (should be in file $file) is not configured"
fi
ind=$(($ind + 1))
wc=`cat "$file" | wc -l`
if (( $ind > $wc )); then ind=1; fi
echo $ind >$HOME/.polynews/ind$1
