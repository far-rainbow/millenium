#!/bin/bash

IP=zabbix.millenium.link
NOW=$(date +"%d-%m-y-%T")
FILE=syslog
FILESEND=/tmp/$FILE-$HOSTNAME-$NOW.log
sudo cp /var/log/$FILE $FILESEND
sudo chmod 755 $FILESEND
sshpass -p "qwertasdfgzxcvb" scp $FILESEND loto@$IP:~loto/logs
sudo rm $FILESEND
