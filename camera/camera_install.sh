#shell file installs camera software for USB and RasPi Camera module
#remember to initialize the raspi camera option in raspiconfig!
#!/bin/bash

if (( $EUID != 0 )); then 
   echo "$(tput setaf 1)This must be run as root. Try 'sudo bash $0'.$(tput sgr0)" 
   exit 1 
fi

echo "(tput setaf 2)Installing GStreamer...$(tput sgr0)"
apt-get install get-streamer1.0

