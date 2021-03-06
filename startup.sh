#!/bin/sh

#http://www.neko.ne.jp/~freewing/raspberry_pi/nvidia_jetson_nano_cron_crontab_autoexec_script/

#FOR JETSON NANO 
#Add "crontab -e"

sleep 5
sudo nvpmodel -m 0
sleep 5
sudo jetson_clocks
sleep 5

#for continuous running
#refer
#https://forums.developer.nvidia.com/t/pcie-bus-error-severity-corrected-on-jetson-nano/155780/3
echo "performance" | sudo tee /sys/module/pcie_aspm/parameters/policy