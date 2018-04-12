#!/bin/bash
sudo apt-get install git

git config --global user.name "xcxz1994"

git config --global user.eamil "981877654@qq.com"
eval $(thefuck --alias)

ssh-keygen -C '981877654@qq.com' -t rsa 

cd ~/.ssh
ls

if [ -e id_rsa.pub ]
then
 idrsa=$( cat id_rsa.pub )
 echo "$idrsa"
else
 echo "id_rsa.pub file not exit!!!"
fi

sudo firefox https://github.com/settings/ssh/new
sudo sleep 30s

ssh-add   ~/.ssh/id_rsa && ssh -T git@github.com


git config --global user.token "75c873ad507cecf694a0623ec6f631e0739ecae8"
ssh-keyscan -t rsa github.com >> ~/.ssh/known_hosts
 




