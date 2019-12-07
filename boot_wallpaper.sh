#!/bin/bash
feh --no-fehbg --bg-scale $(find /home/jay/wallpaper/ -type f | xargs realpath | shuf -n 1)
