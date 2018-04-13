#!/bin/bash

start=$(date +%s)
cd /etc
sudo mkdir pycharm
cd /etc/pycharm/


sudo add-apt-repository ppa:webupd8team/java  

sudo apt-get update

sudo apt-get install oracle-java8-installer -y
java -version
javac -version

sudo apt-get install oracle-java8-set-default -y


sudo echo JAVA_HOME="/usr/lib/jvm/java-8-oracle" >> /etc/environment

source /etc/environment

sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make

sudo apt-get update

sudo apt-get install ubuntu-make -y

umake ide pycharm

end=$(date +%s)
difference=$(( end - start))
echo "运行安装pycharm和java环境花费时间是 $difference 秒"

