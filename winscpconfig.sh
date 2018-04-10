#!/bin/bash



ping baidu.com



sudo apt-get install openssh-server
sudo service ssh start
sudo /etc/init.d/ssh start


configsshd='
Port 22
Protocol 2
HostKey /etc/ssh/ssh_host_rsa_key
HostKey /etc/ssh/ssh_host_dsa_key
HostKey /etc/ssh/ssh_host_ecdsa_key
HostKey /etc/ssh/ssh_host_ed25519_key
UsePrivilegeSeparation yes
KeyRegenerationInterval 3600
ServerKeyBits 1024
SyslogFacility AUTH
LogLevel INFO
LoginGraceTime 120
PermitRootLogin yes
StrictModes yes
RSAAuthentication yes
PubkeyAuthentication yes
IgnoreRhosts yes
RhostsRSAAuthentication no
HostbasedAuthentication no
PermitEmptyPasswords no
ChallengeResponseAuthentication no
X11Forwarding yes
X11DisplayOffset 10
PrintMotd no
PrintLastLog yes
TCPKeepAlive yes
AcceptEnv LANG LC_*
Subsystem sftp /usr/lib/openssh/sftp-server
UsePAM yes
GatewayPorts yes
'

echo $configsshd > /etc/ssh/sshd_config

configssh='
    Host *
    SendEnv LANG LC_*
    HashKnownHosts yes
    GSSAPIAuthentication yes
    GSSAPIDelegateCredentials no
    '
	
echo $configssh > /etc/ssh/ssh_config


sudo /etc/init.d/ssh restart

sudo ps -ef |grep ssh

sudo kill -HUP $(cat /var/run/sshd.pid)

sudo ps -e |grep ssh

sudo /etc/init.d/ssh stop
sudo /etc/init.d/ssh start

sudo ufw allow 22/tcp
sudo reboot