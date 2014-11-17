#!/bin/bash
sudo route del default gw 192.168.0.1 dev eth0
sudo route add default gw 192.168.1.1 dev wlan0
sudo route del -net 192.168.1.1 netmask 255.255.255.255 dev eth0

sudo route add -net 192.168.0.0 netmask 255.255.255.0 metric 2 dev eth0


