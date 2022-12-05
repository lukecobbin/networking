#!/usr/bin/env python3

ip_address = input() #input ip e.g. 192.168.1.0

binary = '.'.join([bin(int(x)+256)[3:] for x in ip_address.split('.')])

#split ip by '.' into blocks (X)
#convert integers to binary
#+256 to always have a 9 bit binary and remove 0b1 at the front
#jopint blocks together with '.'
print(binary)
