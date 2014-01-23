#!/bin/bash
#This sets up communications for the Pi (RXTX and Pi4j)

if (( $EUID != 0 )); then 
   echo "$(tput setaf 1)This must be run as root. Try 'sudo bash $0'.$(tput sgr0)" 
   exit 1 
fi

echo "(tput setaf 2)This shell file will only download necessary communication files and software.$(tput sgr0)"

echo "$(tput setaf 2)Internet connection required.$(tput sgr0)"
read -p "$(tput bold ; tput setaf 1)Press [Enter] if download origonated in /home/pi 
               [Ctrl-C] to abort and restart instillation...$(tput sgr0)"
               
echo "(tput setaf 2)Removing i2c communication from the Pi's blacklist.$(tput sgr0)"
echo -e "blacklist spi-bcm2708" > /etc/modprobe.d/raspi-blacklist.conf
echo -e "blacklist i2c-bcm2708" > /etc/modprobe.d/raspi-blacklist.conf
echo -e "i2c-dev" > /etc/modules

echo "(tput setaf 2)Installing i2c tools...$(tput sgr0)"
apt-get install i2c-tools 
add user pi i2c

echo "(tput setaf 2)Downloading and Installing Pi4j (i2c connection via Java interface)....$(tput sgr0)"
wget http://pi4j.googlecode.com/files/pi4j-0.0.5.deb
sudo dpkg -i pi4j-0.0.5.deb

echo "(tput setaf 2)Moved .jar files to Maine ClassPath.$(tput sgr0)"

