#!/bin/sh

DEVICE_NUMBER=$1


usage()
{
    echo "$0 <index of video for linux device, 0,1,2,....>"
}



if [[ -z "$DEVICE_NUMBER" ]]; then
    usage
    exit 1
fi


exec mjpg_streamer -i "input_uvc.so -r 1024x768 -y  -d /dev/video${DEVICE_NUMBER}" -o "output_http.so -w /usr/share/mjpeg-streamer/www/"
