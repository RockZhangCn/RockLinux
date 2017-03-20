#!/bin/bash
#sudo ifconfig eth0 10.17.87.82 netmask 255.255.255.0
sudo route del default gw 10.17.87.1 dev eth0
sudo route add default gw 10.70.59.1 dev wlan0
sudo route add -net 10.0.0.0 netmask 255.0.0.0 metric 15 dev eth0 

