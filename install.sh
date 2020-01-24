# !/bin/bash

echo "Creating required directories..."
mkdir ~/.config/i3 2>/dev/null
mkdir ~/.config/polybar 2>/dev/null
mkdir ~/.config/light 2>/dev/null
mkdir ~/.config/ramswap 2>/dev/null
mkdir ~/wallpaper 2>/dev/null
echo "Done"

echo "Installing/updating required packages with yay"
yay -S i3-wm
yay -S polybar 
yay -S feh 
yay -S xorg-xrandr
yay -S i3-dmenu-launcher
yay -S kitty
yay -S firefox
yay -S jgmenu
echo "Done"

echo "Copying config files..."
dir=`dirname "$0"`
cp $dir/i3 ~/.config/i3/config 2>/dev/null
cp $dir/polybar ~/.config/polybar/config 2>/dev/null
cp $dir/boot_polybar.sh ~/.config/i3/ 2>/dev/null
cp $dir/boot_wallpaper.sh ~/.config/i3/ 2>/dev/null
cp $dir/light.sh ~/.config/light 2>/dev/null
cp $dir/light_polybar.sh ~/.config/light/pbar.sh 2>/dev/null
cp $dir/ram_swap.sh ~/.config/ramswap/polybarmod.sh 2>/dev/null
cp $dir/quote.sh ~/.config/polybar/quotes.sh 2>/dev/null
touch ~/.config/polybar quotes 2>/dev/null
echo "Done"

echo "Making files executable..."
chmod u+x ~/.config/i3/boot_polybar.sh 2>/dev/null
chmod u+x ~/.config/i3/boot_wallpaper.sh 2>/dev/null
chmod u+x ~/.config/light/light.sh 2>/dev/null
chmod u+x ~/.config/light/pbar.sh 2>/dev/null
chmod u+x ~/.config/ramswap/polybarmod.sh 2>/dev/null
chmod u+X ~/.config/polybar/quotes.sh 2>/dev/null
echo "Done"

echo "Reloading i3..."
i3-msg reload &>/dev/null
echo "Done"
