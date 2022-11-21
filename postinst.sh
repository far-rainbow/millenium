#!/bin/sh

wget clone https://raw.githubusercontent.com/far-rainbow/millenium/main/kiosk.sh -O /target/home/millenium
chmod 777 /target/home/millenium/kiosk.sh

wget https://raw.githubusercontent.com/far-rainbow/millenium/main/stat.sh -O /target/home/millenium
chmod 777 /target/home/millenium/stat.sh

mkdir -p /target/var/spool/cron/crontabs
wget https://raw.githubusercontent.com/far-rainbow/millenium/main/crontab -O /target/var/spool/cron/crontabs/millenium
chown 1000:crontab /target/var/spool/cron/crontabs/millenium
