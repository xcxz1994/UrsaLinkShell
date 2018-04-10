#!/bin/bash

sudo apt-get install libxss1 libappindicator1 libindicator7 -y

sudo apt-get install xvfb

sudo pip install selenium

sudo pip install requests

sudo pip install pyvirtualdisplay

cd /etc

sudo mkdir geckodriver
cd geckodriver
sudo wget https://github.com/mozilla/geckodriver/releases/download/v0.20.1/geckodriver-v0.20.1-linux32.tar.gz

ls

sudo tar -zxvf geckodriver-v0.20.1-linux32.tar.gz 
ls

sudo chmod 777 geckodriver

sudo cp geckodriver /usr/bin/
sudo cp geckodriver /usr/local/bin/
sudo cp geckodriver /usr/local/share/

cd

sudo mkdir pythonWebTest
cd pythonWebTest
 
sudo sublime-text test.py

:<<!
from selenium import webdriver


driver = webdriver.Firefox()
driver.get("http://192.168.23.135/login.html")
!

