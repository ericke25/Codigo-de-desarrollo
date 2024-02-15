#!/bin/bash

# Actualizar el sistema
sudo apt update
sudo apt upgrade -y

# Instalar Git
sudo apt install git -y

# Instalar Docker
sudo sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] Index of linux/ubuntu/ focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo usermod -aG docker ${USER}
sudo su - ${USER}

# Instalar SSH Client
sudo apt install openssh-client -y

# Instalar Docker Compose
sudo apt install docker-compose -y

# Instalar Python
sudo apt install python3 -y

# Verificar las versiones instaladas
echo "Versiones instaladas:"
git --version
docker --version
docker-compose --version
python3 --version