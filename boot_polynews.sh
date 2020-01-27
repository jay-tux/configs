# !/bin/bash

site1=$1
site2=$2

if [[ $site1 = '' ]]; then site1="https://feeds.bbci.co.uk/news/rss.xml"; fi
if [[ $site2 = '' ]]; then site2="https://www.engadget.com/rss.xml"; fi

if [[ ! -d $HOME/.polynews/ ]]; then
	mkdir $HOME/.polynews/
fi

if [[ ! -f $HOME/.polynews/news1.dat ]]; then
	touch $HOME/.config/news1.dat
fi

if [[ ! -f $HOME/.polynews/news2.dat ]]; then
	touch $HOME/.config/news2.dat
fi

while true; do
	while [[ ! -r $HOME/.polynews/news1.dat ]]; do
		v='v'
	done
	curl -s $site1 | grep "<title>" | sed "s/^[ ]*<title><\!\[CDATA\[//" | sed 's/\]\]><\/title>$//' | tail -n +3 >$HOME/.polynews/news1.dat

	while [[ ! -r $HOME/.polynews/news2.dat ]]; do
		v='v'
	done
	curl -s $site2 | grep "<title>" | sed "s/^[ \t]*<title><\!\[CDATA\[//" | sed 's/\]\]><\/title>.*$//' | tail -n +3 >$HOME/.polynews/news2.dat

	dt=`date`
	echo "$dt: Updated news cache"
	sleep 60
done
