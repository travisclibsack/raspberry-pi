#!/bin/bash
#This file initaites the Pi for other downloads in this repo
#Travis Libsack 12/31/2013


if (( $EUID != 0 )); then 
   echo "$(tput setaf 1)This must be run as root. Try 'sudo bash $0'.$(tput sgr0)" 
   exit 1 
fi

echo "$(tput setaf 2)Internet connection required.$(tput sgr0)"
read -p "$(tput bold ; tput setaf 1)Press [Enter] if download originated in /home/pi 
               [Ctrl-C] to abort and restart instillation...$(tput sgr0)"

echo "$(tput bold ; tput setaf 1)Remember$(tput sgr0) $(tput setaf 3)Enable Camera and then reboot in Raspi-Config $(tput sgr0)"

read -p "$(tput bold ; tput setaf 1)Press [Enter] to begin, [Ctrl-C] to abort...$(tput sgr0)"

echo "(tput setaf 2)Insalling Java 7 JRE...$(tput sgr0)"
apt-get install openjdk-7-jre
echo "(tput setaf 2)Insalling Java 7 JDK...$(tput sgr0)"
apt-get install openjdk-7-jdk
