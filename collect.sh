# !/bin/bash
dir=`dirname "$0"`
cp ~/.config/i3/config $dir/i3 2>/dev/null
cp ~/.config/polybar/config $dir/polybar 2>/dev/null
cp ~/.config/i3/boot_polybar.sh $dir/boot_polybar.sh 2>/dev/null
cp ~/.config/i3/boot_wallpaper.sh $dir/boot_wallpaper.sh 2>/dev/null
cp ~/.config/light $dir/light.sh 2>/dev/null
cp ~/.config/light/pbar.sh $dir/light_polybar.sh 2>/dev/null
cp ~/.config/ramswap/polybarmod.sh $dir/ram_swap.sh 2>/dev/null
cp ~/.config/polybar/quotes.sh $dir/quote.sh 2>/dev/null
cp ~/.config/polybar/boot_polynews.sh $dir/boot_polynews.sh 2>/dev/null
cp ~/.config/polybar/newsmod.sh $dir/polynews.sh 2>/dev/null

git add .
if [[ $# = 0 ]] || [[ $1 = "" ]]; then
	git commit -m "Updated config files"
else
	git commit -m "$1"
fi
git push
