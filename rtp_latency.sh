#!/bi/bash
raspivid -fps 25 -w 640 -h 360 -vf -n -t 0 -o - | cvlc -vvv stream:///dev/stdin --sout '#rtp{sdp=rtsp://:8554/}' :demux=h264
