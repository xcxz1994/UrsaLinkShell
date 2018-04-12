#!/bin/bash

IPaddr=`LC_ALL=C ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' |
cut -d: -f2 | awk '{ print $1}'`

echo "IP地址:$IPaddr"

BroadcastAddr=`ifconfig eth0 | grep "广播:" | awk -F " " '{print $3}' | awk -F ":" '{print $2}'`

echo "广播地址:$BroadcastAddr"

SubnetMask=` ifconfig eth0 | grep "掩码:" | awk -F " " '{print $4}' | awk -F ":" '{print $2}'`

echo "子网掩码:$SubnetMask"

DefaultGateway=`route | grep 'default' | awk '{print $2}'`

echo "默认网关:$DefaultGateway"

MacAddr=`ifconfig eth0 | grep "硬件地址" | awk -F " " '{print $5}'`

echo "物理地址:$MacAddr"

