# !/bin/bash
dir=`dirname "$0"`
cp ~/.config/i3/config $dir/i3 2>/dev/null
cp ~/.config/polybar/config $dir/polybar 2>/dev/null
cp ~/.config/i3/ $dir/boot_polybar.sh 2>/dev/null
cp ~/.config/i3/ $dir/boot_wallpaper.sh 2>/dev/null
cp ~/.config/light $dir/light.sh 2>/dev/null
cp ~/.config/light/pbar.sh $dir/light_polybar.sh 2>/dev/null
cp ~/.config/ramswap/polybarmod.sh $dir/ram_swap.sh 2>/dev/null

git add .
git commit -m "Updated config files"
git push
