cd ../../build/src
./gst-rtsp-launch --endpoint=khadas "( udpsrc port=5600 caps=\"application/x-rtp, payload=96, media=video, clock-rate=90000, encoding-name=H265\" \
! queue max-size-buffers=0 \
! rtph265depay \
! queue max-size-buffers=0 \
! h265parse config-interval=1 \
! queue max-size-buffers=0 \
! rtph265pay config-interval=1 name=pay0 pt=96 )"