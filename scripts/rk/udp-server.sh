cd ../build/src
# ./gst-rtsp-launch --endpoint=khadas "( udpsrc port=5004 caps="application/x-rtp" \
# ! queue max-size-buffers=0 \
# ! rtph265depay \
# ! queue max-size-buffers=0 \
# ! h265parse config-interval=1 \
# ! queue max-size-buffers=0 \
# ! rtph265pay config-interval=1 name=server_pay pt=96 )"
./gst-rtsp-launch --endpoint=khadas "( udpsrc port=5004 \
! application/x-rtp, media=video, clock-rate=90000, encoding-name=H265 \
! queue max-size-buffers=0 \
! rtph265depay \
! queue max-size-buffers=0 \
! rtph265pay config-interval=-1 name=server_pay pt=96 )"