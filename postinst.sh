#!/bin/sh

wget https://raw.githubusercontent.com/far-rainbow/millenium/main/kiosk.sh -O /home/millenium/kiosk.sh
chmod 777 /home/millenium/kiosk.sh

wget https://raw.githubusercontent.com/far-rainbow/millenium/main/stat.sh -O /home/millenium/stat.sh
chmod 777 /home/millenium/stat.sh

mkdir -p /var/spool/cron/crontabs
wget https://raw.githubusercontent.com/far-rainbow/millenium/main/crontab -O /var/spool/cron/crontabs/millenium
chown 1000:crontab /var/spool/cron/crontabs/millenium
sleep 100
