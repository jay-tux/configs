# !/bin/bash

dir=`dirname "$0"`
OPTERR=0
opt_c=FALSE
while getopts "c:" opt; do
	case $opt in
		c) 
			opt_c=TRUE
			;;
		*)
			echo "Use -c to install configs as well"
			exit 1
			;;
	esac
done

yay -Syy
echo "Installing configs and their dependencies..."
if [[ $opt_c = TRUE ]]; then `bash $dir/install.sh`; fi
echo "Done"

echo "Installing other packages with yay"
yay -S blender
yay -S GIMP
yay -S wine
yay -S discord
yay -S deepin-screenshot
yay -S deepin-screen-recorder
yay -S xf86-video-nouveau
yay -S nvidia-utils
yay -S nvidia-settings
yay -S nvidia-dkms
yay -S libxnvctrl
yay -S libvdpau
yay -S neovim
yay -S banshee
yay -S steam
yay -S filelight
yay -S sl
yay -S lolcat
yay -S gotop
yay -S htop
yay -S kdeconnect
yay -S libreoffice
echo "Done"
