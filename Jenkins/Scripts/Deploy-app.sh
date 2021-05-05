sudo rm -rf ao-docker-tech-test
git clone https://github.com/Ashley-Edge/ao-docker-tech-test.git
cd ao-docker-tech-test
sudo docker login
sudo docker stack deploy --compose-file docker-compose.yaml aspnetapp