#bash -c "$(wget -O - https://git.io/vFW20)"
mkdir ~/bot_fb
cd ~/bot_fb
sudo npm init -y
sudo npm install facebook-chat-api
read -p "What are your ID Facebook? : " id
read -p "Waht are youre PASSWORD Facebook? : " password
read -p "What is id who posted message? : " id_des
echo "ID: $id  +  PASSWORD : $password --> $id_des"

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
login({email: "$id", password: "$password"}, (err, api) => {
    if(err) return console.error(err);
    const yourID = "$id_des";
    const msg = address;
    api.sendMessage(msg, yourID);
});
EOT
echo node ~/bot_fb/ip.js >> ~/.config/lxsession/LXDE-pi/autostart
