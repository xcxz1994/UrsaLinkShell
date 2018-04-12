#!/bin/bash

sudo echo '
deb http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse

deb http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse

deb-src http://mirrors.aliyun.com/ubuntu/ trusty main restricted universe multiverse

deb-src http://mirrors.aliyun.com/ubuntu/ trusty-security main restricted universe multiverse

deb-src http://mirrors.aliyun.com/ubuntu/ trusty-updates main restricted universe multiverse

deb-src http://mirrors.aliyun.com/ubuntu/ trusty-proposed main restricted universe multiverse

deb-src http://mirrors.aliyun.com/ubuntu/ trusty-backports main restricted universe multiverse


deb http://debian.ustc.edu.cn/ubuntu/ trusty main multiverse restricted universe

deb http://debian.ustc.edu.cn/ubuntu/ trusty-backports main multiverse restricted universe

deb http://debian.ustc.edu.cn/ubuntu/ trusty-proposed main multiverse restricted universe

deb http://debian.ustc.edu.cn/ubuntu/ trusty-security main multiverse restricted universe

deb http://debian.ustc.edu.cn/ubuntu/ trusty-updates main multiverse restricted universe

deb-src http://debian.ustc.edu.cn/ubuntu/ trusty main multiverse restricted universe

deb-src http://debian.ustc.edu.cn/ubuntu/ trusty-backports main multiverse restricted universe

deb-src http://debian.ustc.edu.cn/ubuntu/ trusty-proposed main multiverse restricted universe

deb-src http://debian.ustc.edu.cn/ubuntu/ trusty-security main multiverse restricted universe

deb-src http://debian.ustc.edu.cn/ubuntu/ trusty-updates main multiverse restricted universe



deb http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse

deb http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse

deb http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse

deb http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse

deb http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse

deb-src http://mirrors.163.com/ubuntu/ trusty main restricted universe multiverse

deb-src http://mirrors.163.com/ubuntu/ trusty-security main restricted universe multiverse

deb-src http://mirrors.163.com/ubuntu/ trusty-updates main restricted universe multiverse

deb-src http://mirrors.163.com/ubuntu/ trusty-proposed main restricted universe multiverse

deb-src http://mirrors.163.com/ubuntu/ trusty-backports main restricted universe multiverse


#sohu

deb http://mirrors.sohu.com/ubuntu/ trusty main restricted universe multiverse

deb http://mirrors.sohu.com/ubuntu/ trusty-security main restricted universe multiverse

deb http://mirrors.sohu.com/ubuntu/ trusty-updates main restricted universe multiverse

deb http://mirrors.sohu.com/ubuntu/ trusty-proposed main restricted universe multiverse

deb http://mirrors.sohu.com/ubuntu/ trusty-backports main restricted universe multiverse

deb-src http://mirrors.sohu.com/ubuntu/ trusty main restricted universe multiverse

deb-src http://mirrors.sohu.com/ubuntu/ trusty-security main restricted universe multiverse

deb-src http://mirrors.sohu.com/ubuntu/ trusty-updates main restricted universe multiverse

deb-src http://mirrors.sohu.com/ubuntu/ trusty-proposed main restricted universe multiverse

deb-src http://mirrors.sohu.com/ubuntu/ trusty-backports main restricted universe multiverse


#北京交通大学

deb http://mirror.bjtu.edu.cn/ubuntu/ trusty main multiverse restricted universe

deb http://mirror.bjtu.edu.cn/ubuntu/ trusty-backports main multiverse restricted universe

deb http://mirror.bjtu.edu.cn/ubuntu/ trusty-proposed main multiverse restricted universe

deb http://mirror.bjtu.edu.cn/ubuntu/ trusty-security main multiverse restricted universe

deb http://mirror.bjtu.edu.cn/ubuntu/ trusty-updates main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ trusty main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ trusty-backports main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ trusty-proposed main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ trusty-security main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ trusty-updates main multiverse

# 北京理工

deb http://mirror.bjtu.edu.cn/ubuntu/ precise main multiverse restricted universe

deb http://mirror.bjtu.edu.cn/ubuntu/ precise-backports main multiverse restricted universe

deb http://mirror.bjtu.edu.cn/ubuntu/ precise-proposed main multiverse restricted universe

deb http://mirror.bjtu.edu.cn/ubuntu/ precise-security main multiverse restricted universe

deb http://mirror.bjtu.edu.cn/ubuntu/ precise-updates main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-backports main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-proposed main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-security main multiverse restricted universe

deb-src http://mirror.bjtu.edu.cn/ubuntu/ precise-updates main multiverse restricted universe







' > /etc/apt/sources.list

sudo apt-get update

sudo apt-get install vim -y

sudo apt-get remove libreoffice-common -y

sudo apt-get remove unity-webapps-common -y

sudo apt-get remove thunderbird totem rhythmbox empathy brasero simple-scan gnome-mahjongg aisleriot gnome-mines cheese transmission-common gnome-orca webbrowser-app gnome-sudoku  landscape-client-ui-install -y

sudo apt-get remove onboard deja-dup -y


