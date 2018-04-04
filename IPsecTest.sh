#!/bin/bash
#sudo su
echo "get root！"

apt-get install strongswan -y

localhostIP=`LC_ALL=C ifconfig  | grep 'inet addr:'| grep -v '127.0.0.1' |
cut -d: -f2 | awk '{ print $1}'`


echo "$localhostIP"

ls /etc/ipsec.*

cd /etc
pwd

if test -e ./ipsec.conf
then
   echo "exit ipsec.conf start write something!"
   echo "conn ipsec_server
        keyexchange=ikev1
        type=tunnel
        left=$localhostIP
        right=%any
        esp=des-md5-modp768
        ike=des-md5-modp768
        auto=start
        authby=psk" >> ipsec.conf
else
    echo "ipsec.conf no exit!!!"
fi

if test -e ./ipsec.secrets
then 
  echo "exit ipsec.secrets start write something!"
  echo ": PSK '123456'" >> ipsec.secrets
else
  echo "ipsec.secrets no exit!!!"
fi

echo "-----OK-----------"

ipsec restart


