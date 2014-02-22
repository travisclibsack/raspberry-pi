#!/usr/bin/python

import RPi.GPIO as GPIO
import time
import os

pir = 18
GPIO.setmode(GPIO.BCM)
GPIO.setup(pir,GPIO.IN)
Current_State = 0
Previous_State = 0

while True: 
	Current_State = GPIO.input(pir)


	if (Current_State==1 and Previous_State ==0 ):
		os.system("raspistill -o intruder.jpg -t 10 -q 100")
	##	os.system("python /home/pi/scripts/python/room_alarm/notify.py")
		print("sensor triggered!")
		Previous_State =1
	elif (Current_State ==1 and Previous_State ==1):
		Previous_State=0
		Current_State=0
	time.sleep(0.01)

