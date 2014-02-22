Raspberry Pi Software
=====================

This repro contains executables and software needed for multiple Raspberry Pi projects. For more information please read the descriptions below. 

Initiation
----------

Before using any other files, you will need to update the Pi, download JRE, and configure Raspi-Config correctly. You can do this by running _init.sh_. Below are detailed explanations for each folder in this repro. 


Java Communications (RXTX and Pi4j)
-----------------------------------

I use Java's serial communication capabilities (RXTX) along with I2C to communicate between the Raspberry Pi and various other devices (Arduino, LCD, etc). Running the _comm.sh_ executable will download the required libraries from the _communications_ folder into the necessary directories on the Pi. Pi4j is used for I2C communication while the serial communication is taken care of by RXTXcomm.jar from Qbang. 

Camera
------------------------------------
The _camera_ folder contains a shell file which will automatically install MJPG-streamer, GStreamer 1.0, as well as all of the needed dependencies. For more information about GStreamer (ie. streaming it through a laptop) please visit this site for GStreamer: http://gstreamer.freedesktop.org and this one for laptop steaming: http://robogoby.blogspot.com/2014/01/raspi-camera-gstreamer-10-w-windows-7.html

The dependencies for this install are: 

****Remember to use the _sudo raspi-config_ command to enable the raspi-camera module. 

For more information on how to use the camera module I would recommend quickly reading this: http://www.raspberrypi-spy.co.uk/2013/05/taking-hi-res-photos-with-the-pi-camera-module/ 



