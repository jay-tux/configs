# !/bin/bash

mem_max=`free -b | grep 'Mem' | tr -s ' ' | cut -d ' ' -f2`
mem_use=`free -b | grep 'Mem' | tr -s ' ' | cut -d ' ' -f3`
mem_fre=`free -b | grep 'Mem' | tr -s ' ' | cut -d ' ' -f4`
mem_avl=`free -b | grep "Mem" | tr -s ' ' | cut -d ' ' -f7`
mem_prc=`echo "$mem_use / $mem_max * 100" | bc -l`

swp_max=`free -b | grep "Swap" | tr -s ' ' | cut -d ' ' -f2`
swp_use=`free -b | grep "Swap" | tr -s ' ' | cut -d ' ' -f3`
swp_fre=`free -b | grep "Swap" | tr -s ' ' | cut -d ' ' -f4`
swp_prc=`echo "$swp_use / $swp_max * 100" | bc -l`

echo "RAM: ${mem_prc:0:5}%   SWAP: ${swp_prc:0:5}%"
