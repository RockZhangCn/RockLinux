#!/bin/bash
sudo iptables -A INPUT -m state --state NEW -m tcp -p tcp --dport 943 -j ACCEPT

sudo iptables -t nat -A PREROUTING -p tcp --dport 943 -j DNAT --to-destination 192.243.115.223
sudo iptables -t nat -A PREROUTING -p udp --dport 943 -j DNAT --to-destination 192.243.115.223
sudo iptables -t nat -A POSTROUTING -p tcp -d 192.243.115.223 --dport 943 -j SNAT --to-source 172.18.27.185
sudo iptables -t nat -A POSTROUTING -p udp -d 192.243.115.223 --dport 943 -j SNAT --to-source 172.18.27.185
