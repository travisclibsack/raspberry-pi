#!/bin/bash
#Installs the required packages to use a Gmail notifier on the Raspberry-Pi
#Check out: http://mitchtech.net/connect-raspberry-pi-to-gmail-facebook-twitter-more/ for more information on this install

if (( $EUID != 0 )); then 
   echo "$(tput setaf 1)This must be run as root. Try 'sudo bash $0'.$(tput sgr0)" 
   exit 1 
fi

echo "(tput setaf 2)Installing required Python package manager$(tput sgr0)"
apt-get install python-pip python2.7-dev

echo "(tput setaf 2)Now update using the easy_install utility in pip$(tput sgr0)"
easy_install -U distribute

echo "(tput setaf 2)Finally download feedparser$(tput sgr0)"
pip install feedparser

echo "(tput setaf 2)Your are now ready to use Gmail on the Pi$(tout sgr0)"
