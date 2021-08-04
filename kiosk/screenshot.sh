#!/bin/sh

export DISPLAY=:0
export XAUTHORITY=/home/chromium/.Xauthority
TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`

xwd -root -out /home/chromium/sc.xwd
convert /home/chromium/sc.xwd /home/chromium/sc.jpg
aws s3 cp --quiet  /home/chromium/sc.jpg s3://etainabl-kiosk/screenshots/${RESIN_DEVICE_NAME_AT_INIT}_${TIMESTAMP}.jpg
rm -rf /home/chromium/sc.jpg