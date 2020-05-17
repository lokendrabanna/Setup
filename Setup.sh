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
sudo rm -rf /data/data/com.termux/files/home/Automation
sudo git clone https://github.com/lokendrabanna/Automation
sudo chmod a+x /data/data/com.termux/files/home/Automation/Automation.sh
sudo bash /data/data/com.termux/files/home/Automation/Automation.sh
