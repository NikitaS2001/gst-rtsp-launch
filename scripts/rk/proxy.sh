cd ../../build/src
./gst-rtsp-launch --endpoint=khadas "( rtspsrc latency=0 buffer-mode=slave location=rtsp://192.168.143.25:8554/main.264 \
! queue max-size-buffers=0 \
! rtph265depay \
! queue max-size-buffers=0 \
! rtph265pay config-interval=-1 name=pay0 pt=96 )" 