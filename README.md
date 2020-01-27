# Jay's Arch Linux Configs
This repo contains config files for Arch Linux with i3.
It configures the following modules:  
 1. i3  
 1. polybar (for which some custom modules have been written).  

It requires the following modules:  
 1. a package manager (for the installer)  
 1. Xorg-xinit (X server in general)  
 1. Xorg-xrandr (for lighting; done by installer)  
 1. i3 (is installed by the installer)  
 1. polybar (is installed by the installer)  
 1. kitty (default terminal in the config)  
 1. firefox (default browser for the config)  
 1. feh (for the backgrounds)  
 1. jgmenu (small graphical dmenu variant)  
  
All modules, except the package manager, are installed by the installer (./install.sh), which also copies all files to their intended destination.  
IMPORTANT: when running the installation script, be sure to pass as ``$1`` the command for your package manager. If not, the script assumes ``yay`` is your package manager.
If wanted, you can run [./other.sh], which install a bunch of other packages as well.  
To run both, simply run [./other.sh -c], which does all you need.  
  
## Custom polybar modules  
Polybar has been customized to contain many other modules:  
 1. Light module: shows the intensity of the screen's lighting - works only with the (packaged) xrandr light modifier  
 1. RAM/SWAP module: shows both ram and swap usage in percentage  
 1. Quote module: can read quotes from a file, displaying them at random (not in the current bar)  
  1. Quotes are expected to be in the ``~/.config/polybar/quotes`` file  
  1. You need to add ``quotes`` to any bar configuration (replacing the ``news3`` block is the recommended way)  
 1. News module: gets news headlines from multiple RSS feeds:  
  1. Currently, there are three news sites configured: ``BBC`` (module ``news1``), ``Engadget`` (module ``news2``) and ``The Guardian`` (module ``news3``)  
  1. More can be added easily, and they can be changed easily.  
