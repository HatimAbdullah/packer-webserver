#!/bin/bash
sudo apt update -y && sudo apt install -y curl vim git docker.io
sudo usermod -aG docker ubuntu
touch nobodyknows
date > nobodyknows
touch index.html
echo 'not touched yet' > index.html
sudo docker image build -t small-ws /home/ubuntu/.
sudo docker create --name hola -p 80:80 -v /home/ununtu/nginx:/work small-ws
sudo systemctl enable web-nginx

