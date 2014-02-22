#!/bin/tcsh

set myip=10.0.1.119
set port=5000
set width=320
set height=240

gst-launch\
   v412src!\
   ffmpegcolorspace !\
    video/x-raw-yuv,width=${width},height=${height}, framerate=\(fraction\)30/1 !\
   queue !\
videorate !\
video/x-raw-yuv,framerate=10/1 !\
 
jpegenc !\
multipartmux !\
tcpserversink host=${myip} port=${port} sync=false
