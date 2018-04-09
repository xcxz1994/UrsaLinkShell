#!/bin/bash

sudo apt-get install python2.7 python2.7-dev python3.4 python3.4-dev -y

sudo apt-get install build-essential libssl-dev libevent-dev libjpeg-dev libxml2-dev libxslt-dev -y

sudo apt-get install python-pip -y

sudo pip install virtualenv
sudo pip3 install virtualenv

sudo virtualenv --no-site-packages -p /usr/bin/python2.7 ~/.venv/python2.7

sudo virtualenv --no-site-packages -p /usr/bin/python3.4 ~/.venv/python3.4

sudo pip3 -V
sudo pip3 install --upgrade pip

sudo echo 'if [ -f ~/.venv/python2.7/bin/activate ]; then
         . ~/.venv/python2.7/bin/activate
     fi' >> ~/.bashrc

sudo apt-get install git -y

sudo git config --global alias.br branch
sudo git config --global alias.ci commit
sudo git config --global alias.co checkout
sudo git config --global alias.st status

sudo git config --global alias.lg "log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen (%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

sudo git config --global user.name "xcxz1994"
sudo git config --global user.email 981877654@qq.com

sudo git config --global color.ui true

sudo apt-get install git-flow

git clone http://github.com/revans/bash-it.git ~/.bash_it

sudo ~/.bash_it/install.sh

sudo echo 'if [ -f ~/.bash_profile ]; then
      . ~/.bash_profile
      fi' >> ~/.bashrc


cd /etc/
mkdir sublime
cd sublime
sudo add-apt-repository ppa:webupd8team/sublime-text-2
sudo apt-get update
sudo apt-get install sublime-text
sublime-text

:<<!
import urllib2, os;
pf='Package Control.sublime-package';
ipp = sublime.installed_packages_path();
os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler( )));
open( os.path.join( ipp, pf), 'wb' ).write( urllib2.urlopen( 'http://sublime.wbond.net/' +pf.replace( ' ','%20' )).read());
print( 'Please restart Sublime Text to finish installation')
!
:<<!
Auto Encoding for Python
BracketHighlighter
Git
Markdown Preview
Python Auto-Complete
SublimeLinter
SidebarEnhancements
SublimeCondeIntel
sublime-github
Dayle Rees Color Schemes
!
