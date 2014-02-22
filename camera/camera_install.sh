#shell file installs camera software for USB and RasPi Camera module
#remember to initialize the raspi camera option in raspiconfig!
#!/bin/bash

if (( $EUID != 0 )); then 
   echo "$(tput setaf 1)This must be run as root. Try 'sudo bash $0'.$(tput sgr0)" 
   exit 1 
fi

echo "Installing gst-streamer1.0 and mjpg-streamer"
echo "need to also install dependencies"
sudo apt-get install gst-streamer1.0

