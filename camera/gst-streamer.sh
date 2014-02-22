echo "porting data to 10.0.1.108 port=5000"
echo "press ctrl^C to abort"
raspivid -t 999999 -w 1080 -h 720 -fps 30 -hf -b 2000000 -o - | gst-launch-1.0 -e -vvvv fdsrc ! h264parse ! rtph264pay pt=96 config-interval=5 ! udpsink host=10.0.1.108 port=5000
