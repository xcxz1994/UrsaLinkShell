#!/bin/bash

sudo apt-get update
sudo apt-get install mono-runtime

sudo apt-get install monodevelop

sudo apt-get install mono-gmcs

sudo apt-get update

sudo cd /etc

mkdir loic && cd loic

sudo wget https://raw.githubusercontent.com/nicolargo/loicinstaller/master/loic.sh

sudo chmod 777 loic.sh

sudo ./loic.sh install

cd LOIC/src

sudo mdtool build

cd ..   #到LOIC目录下运行另一个脚本

sudo ./loic.sh run

