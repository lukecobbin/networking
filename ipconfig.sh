#!/bin/bash

#a bash script for output like ipconfig on windows

printf "IP Address:"
ip= ifconfig enp0s3 | grep inet | grep -v inet6 | awk '{print $2}'

printf "Netmask:"
netmask= ifconfig enp0s3 | grep inet | grep -v inet6 | awk '{print $4}'

printf "Broadcast:" 
broadcast= ifconfig enp0s3 | grep inet | grep -v inet6 | awk '{print $6}'

printf "DNS server:"
dns= cat /etc/resolv.conf | grep nameserver | awk '{print $2}'
