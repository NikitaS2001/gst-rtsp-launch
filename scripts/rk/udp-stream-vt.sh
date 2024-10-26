gst-launch-1.0 --gst-debug-level=3 videotestsrc pattern=ball \
! video/x-raw,format=I420,framerate=30/1,width=1280,height=720 \
! queue max-size-buffers=0 \
! mpph265enc \
! video/x-h265,framerate=30/1,width=1280,height=720 \
! queue max-size-buffers=0 \
! rtph265pay config-interval=1 name=stream_pay pt=96 \
! udpsink host=127.0.0.1 port=5004