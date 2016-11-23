#!/bin/bash

case "$(python3 --version 2>&1)" in
    **"."[!0-2]*)
        echo "Fine!"
        #sudo pip3 inistall pyrebase
        mkdir ~/status_app
        wget https://raw.githubusercontent.com/grit0/rasp/master/first.py -O ~/status_app/first.py
        #----start cron----
        crontab -l > status_cron
        echo "* * * * * python3 ~/status_app/first.py" >> status_cron
        crontab status_cron
        rm status_cron
        #-----run--------
        python3 ~/status_app/first.py

        ;;
    *)
        echo "Wrong Python version! Not support Firebase"
        
        ;;
esac

