#!/bin/sh

wget https://raw.githubusercontent.com/far-rainbow/millenium/main/kiosk_tj.sh -O /target/home/millenium/kiosk.sh
chmod 700 /target/home/millenium/kiosk.sh
chown 1000:1000 /target/home/millenium/kiosk.sh

wget https://raw.githubusercontent.com/far-rainbow/millenium/main/stat.sh -O /target/home/millenium/stat.sh
chmod 700 /target/home/millenium/stat.sh
chown 1000:1000 /target/home/millenium/stat.sh

wget https://raw.githubusercontent.com/far-rainbow/millenium/main/crontab -O /target/home/millenium/crontab
chown 1000:1000 /target/home/millenium/crontab
sleep 3
