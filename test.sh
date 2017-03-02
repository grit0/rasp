#!/bin/bash

case "$(python3 --version 2>&1)" in
    **"."[!0-2]*)
        echo "Fine!"

        ;;
    *)
        echo "Wrong Python version! Not support Firebase"
        
        ;;
esac
