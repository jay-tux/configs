# !/bin/bash

site1=$1
site2=$2

if [[ $site1 = '' ]]; then site1="https://feeds.bbci.co.uk/news/rss.xml"; fi
if [[ $site2 = '' ]]; then site2="https://www.engadget.com/rss.xml"; fi
if [[ $site3 = '' ]]; then site3="https://www.theguardian.com/uk/rss"; fi

if [[ ! -d $HOME/.polynews/ ]]; then
	mkdir $HOME/.polynews/
fi

if [[ ! -f $HOME/.polynews/news1.dat ]]; then
	touch $HOME/.polynews/news1.dat
fi

if [[ ! -f $HOME/.polynews/news2.dat ]]; then
	touch $HOME/.polynews/news2.dat
fi

if [[ ! -f $HOME/.polynews/news3.dat ]]; then
	touch $HOME/.polynews/news3.dat
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

	while [[ ! -r $HOME/.polynews/news3.dat ]]; do
		v='v'
	done
	curl -s $site3 | grep "<title>" | sed "s/^[ \t]*<title>//" | sed "s/<\!\[CDATA\[//" | sed 's/<\/title>.*$//' | sed 's/\]\]>$//' | tail -n +3 >$HOME/.polynews/news3.dat

	dt=`date`
	echo "$dt: Updated news (3) cache"
	sleep 60
done
