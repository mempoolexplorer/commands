#!/bin/bash

#exit if fails (-e) and print all lines(-x)  
set -ex

docker_compose_ver=1.28.4
tor_version=10.0.13
bitcoin_ver=0.21.0
bitcoin_arch=x86_64
bitcoin_core_sig=01EA5486DE18A882D4C2684590C8019E36C2E964

#General update and upgrade
sudo apt update && sudo apt -y upgrade

# install various utilities
sudo apt install -y vim net-tools htop tmux git stow curl stress-ng lm-sensors nmap tree tor npm unzip zip

#docker installation (https://docs.docker.com/engine/install/ubuntu/) and (https://docs.docker.com/engine/install/linux-postinstall/)
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

#Docker starts on Boot:
sudo systemctl enable docker.service
sudo systemctl enable containerd.service

#Docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/${docker_compose_ver}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

#post-install de docker-compose (autocomplete)
sudo curl -L https://raw.githubusercontent.com/docker/compose/${docker_compose_ver}/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

#SDKMan!
curl -s "https://get.sdkman.io" | bash
source ~/.sdkman/bin/sdkman-init.sh

#SDKMan sdks
sdk install java 11.0.10.hs-adpt
sdk install gradle

# tor files
#sudo cat ./etc/tor/torrc_add >> /etc/tor/torrc 
sudo systemctl restart tor

#Bitcoind

mkdir -p ~/programas
wget https://bitcoincore.org/bin/bitcoin-core-${bitcoin_ver}/SHA256SUMS.asc 
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys ${bitcoin_core_sig} 
gpg --verify SHA256SUMS.asc 
grep bitcoin-${bitcoin_ver}-${bitcoin_arch}-linux-gnu.tar.gz SHA256SUMS.asc > SHA25SUM 
wget https://bitcoincore.org/bin/bitcoin-core-${bitcoin_ver}/bitcoin-${bitcoin_ver}-${bitcoin_arch}-linux-gnu.tar.gz 
sha256sum -c SHA25SUM 
tar -xzvf bitcoin-${bitcoin_ver}-${bitcoin_arch}-linux-gnu.tar.gz -C ~/programas
~/programas/bitcoin-${bitcoin_ver}/bin/test_bitcoin --show_progress 
rm bitcoin-${bitcoin_ver}-${bitcoin_arch}-linux-gnu.tar.gz SHA256SUMS.asc SHA25SU
#scp -rp 7ba@server:~/.bitcoin/ ~


