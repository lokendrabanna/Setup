#!/data/data/com.termux/files/usr/bin/bash env

############################################
#  REX Automation Environment Setup Script
############################################
# Update and upgrade
pkg up -y && pkg upgrade -y

# Switch permissive
su -c 'setenforce 0'
termux-setup-storage

# Install dependencies
time apt install ruby pv toilet tsu git wget screenfetch figlet -y

gem install lolcat

sudo 'find . -iname '*Automation.sh*' -exec rm -rf {} \;'
sudo git clone https://github.com/lokendrabanna/Automation -O ./Automation.sh
sudo chmod a+x Automation.sh
sudo ./Automation.sh
