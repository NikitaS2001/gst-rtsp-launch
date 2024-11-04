gst-launch-1.0 rtspsrc latency=0 buffer-mode=slave location=rtsp://192.168.143.25:8554/main.264 \
! queue max-size-buffers=0 \
! rtph265depay \
! queue max-size-buffers=0 \
! h265parse config-interval=1 \
! queue max-size-buffers=0 \
! rtph265pay aggregate-mode=zero-latency mtu=1450 config-interval=1 name=pay0 pt=97 \
! udpsink host=192.168.144.20 port=5600 auto-multicast=false sync=false async=false
# ! udpsink host=10.0.0.221 port=5600 sync=false async=false
