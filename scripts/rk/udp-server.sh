cd ../../build/src
./gst-rtsp-launch --endpoint=khadas "( udpsrc port=5600 caps=\"application/x-rtp, payload=97, media=video, clock-rate=90000, encoding-name=H265\" \
! queue max-size-buffers=1 \
! rtph265depay \
! queue max-size-buffers=1 \
! h265parse config-interval=1 \
! queue max-size-buffers=1 \
! rtph265pay aggregate-mode=zero-latency config-interval=1 name=pay0 pt=97 )"