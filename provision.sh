#!/bin/bash
sudo apt update -y && sudo apt install -y curl vim git docker.io
sudo usermod -aG docker ubuntu
touch nobodyknows
date > nobodyknows
touch whereyouare
pwd > whereyouare
