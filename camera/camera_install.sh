#shell file installs camera software for USB and RasPi Camera module
#remember to initialize the raspi camera option in raspiconfig!
#!/bin/bash


echo "Installing gst-streamer1.0 and mjpg-streamer"
echo "need to also install dependencies"
sudo apt-get install gst-streamer1.0
