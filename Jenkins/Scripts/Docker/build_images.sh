#!/bin/bash

#Install dependencies required to build
sudo apt install openjdk-8-jre maven default-jre -y

#Go into our Docker directory
cd Docker

#Prune our system by force
docker system prune -f

#Run docker-compose to build both our images
docker-compose build

#Log in to our dockerhub account
sudo docker login docker.io -u $DOCKER_USERNAME -p $DOCKER_PASSWORD

# Push the images to docker
sudo docker-compose push