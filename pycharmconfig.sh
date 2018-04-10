cd /etc
sudo mkdir pycharm
cd /pycharm


sudo add-apt-repository ppa:webupd8team/java  

sudo apt-get update

sudo apt-get install oracle-java8-installer
java -version
javac -version

sudo apt-get install oracle-java8-set-default
sudo su

echo JAVA_HOME="/usr/lib/jvm/java-8-oracle" >> /etc/environment
source /etc/environment

sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make

sudo apt-get update

sudo apt-get install ubuntu-make

umake ide pycharm

