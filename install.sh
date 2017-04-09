if [ "$(which python3)" == "" ]; then
        echo "You haven't python3"
        sudo apt-get install python3
fi
echo "You have python3"
if [ "$(python3 -c "import pyrebase" 2>&1)" != "" 2>&1 ]; then
        echo "Not haven't pyrebase"
        if [ "$(which pip3)" == "" ]; then
                sudo apt-get install python3-pip
        fi
        echo "You have pip3"
        sudo pip3 install pyrebase
fi
echo "You have pyrebase module"
