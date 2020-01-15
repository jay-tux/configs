# Jay's Arch Linux Configs
This repo contains config files for Arch Linux with i3.
It configures the following modules:  
  1: i3  
  2: polybar (for which some custom modules have been written).  

It requires the following modules:  
  1: yay (for the installer)  
  2: Xorg-xinit (X server in general)  
  3: i3 (is installed by the installer)  
  4: polybar (is installed by the installer)  
  5: kitty (default terminal in the config)  
  6: firefox (default browser for the config)  
  7: feh (for the backgrounds)  
  8: jgmenu (small graphical dmenu variant)  
All modules, except yay, are installed by the installer (./install.sh), which also copies all files to their intended destination.  
If wanted, you can run [./other.sh], which install a bunch of other packages as well.  
To run both, simply run [./other.sh -c], which does all you need.  
