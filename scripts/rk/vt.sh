cd ../../build/src
./gst-rtsp-launch --endpoint=khadas "( videotestsrc pattern=ball \
! video/x-raw,format=I420,framerate=30/1,width=1280,height=720 \
! mpph265enc \
! video/x-h265,framerate=30/1,width=1280,height=720 \
! rtph265pay config-interval=1 name=pay0 pt=96 )"