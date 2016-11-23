#!/bin/bash

case "$(python3 --version 2>&1)" in
    **"."[!0-2]*)
        echo "Fine!"
        ;;
    *)
        echo "Wrong Python version!"
        ;;
esac
#sudo pip3 inistall pyrebase
mkdir ~/status_app
wget https://raw.githubusercontent.com/grit0/rasp/master/first.py -O ~/status_app/first.py

#cron
crontab -l > status_cron
echo "* * * * * python3 ~/status_app/first.py" >> status_cron
crontab status_cron
rm status_cron



python3 ~/status_app/first.py
