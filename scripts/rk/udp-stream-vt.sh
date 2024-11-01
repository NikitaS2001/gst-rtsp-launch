gst-launch-1.0 --gst-debug-level=3 videotestsrc \
! video/x-raw,format=I420,framerate=30/1,width=1280,height=720 \
! x265enc bitrate=5000 speed-preset=ultrafast tune=zerolatency key-int-max=30 \
! queue max-size-buffers=0 \
! h265parse config-interval=1 \
! rtph265pay aggregate-mode=zero-latency config-interval=1 name=pay0 pt=97 \
! udpsink host=192.168.144.20 port=5600 