Raspberry Pi Software
=====================

This repro contains executables and software needed for multiple Raspberry Pi projects. For more information please read the descriptions below. 

Initiation
----------

Before using any other files, you will need to update the Pi, download JRE, and configure Raspi-Config correctly. You can do this by running _init.sh_


Java Communications (RXTX and Pi4j)
-----------------------------------

I use Java's serial communication capabilities (RXTX) along with I2C to communicate between the Raspberry Pi and various other devices (Arduino, LCD, etc). Running the _comm.sh_ executable will download the required libraries from the _communications_ folder into the necessary directories on the Pi. Pi4j is used for I2C communication while the serial communication is taken care of by RXTXcomm.jar from Qbang. 





