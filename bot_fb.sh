#bash -c "$(wget -O - https://git.io/vFW20)"
curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -
sudo apt-get install nodejs -y
mkdir ~/bot_fb
cd ~/bot_fb
sudo npm init -y
sudo npm install facebook-chat-api
read -p "What are your E-mail Facebook? : " email
read -p "Waht are youre PASSWORD Facebook? : " password
read -p "What is id who posted message? : " id_des
echo "E-mail: $email  +  PASSWORD : $password --> $id_des"

cat <<EOT > ~/bot_fb/ip.js
const login = require("facebook-chat-api");
const ifaces = require('os').networkInterfaces();
  let address;
  Object.keys(ifaces).forEach(dev => {
    ifaces[dev].filter(details => {
      if (details.family === 'IPv4' && details.internal === false) {
        address = details.address;
      }
    });
  });
login({email: "$email", password: "$password"}, (err, api) => {
    if(err) return console.error(err);
    const yourID = "$id_des";
    const msg = address;
    api.sendMessage(msg, yourID);
});
EOT
echo node ~/bot_fb/ip.js >> ~/.config/lxsession/LXDE-pi/autostart
