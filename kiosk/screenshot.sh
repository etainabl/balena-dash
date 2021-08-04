export DISPLAY=:0
export XAUTHORITY=/home/chromium/.Xauthority
xwd -root -out /home/chromium/sc.xwd
convert /home/chromium/sc.xwd /home/chromium/sc.jpg
aws s3 cp /home/chromium/sc.jpg s3://etainabl-kiosk/screenshots/test.jpg
rm -rf /home/chromium/sc.jpg