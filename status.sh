#!/bin/bash
case "$(python3 --version 2>&1)" in
    **"."[!0-2]*)
        echo "Fine!"
        ;;
    *)
        echo "Wrong Python version!"
        ;;
esac
mkdir ~/status_app
wget https://raw.githubusercontent.com/grit0/rasp/master/first.py -O ~/status_app/first.py
python3 ~/status_app/first.py
