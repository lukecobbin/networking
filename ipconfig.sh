#!/bin/bash

#a bash script for output like ipconfig on windows

#set the interface e.g. eth0
interface="enp0s3"

printf "IP Address:"
ip= ifconfig $interface | grep inet | grep -v inet6 | awk '{print $2}'

printf "Netmask:"
netmask= ifconfig $interface | grep inet | grep -v inet6 | awk '{print $4}'

printf "Broadcast:" 
broadcast= ifconfig $interface | grep inet | grep -v inet6 | awk '{print $6}'

printf "DNS server:"
dns= cat /etc/resolv.conf | grep nameserver | awk '{print $2}'
