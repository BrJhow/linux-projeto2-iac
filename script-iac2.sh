#!/bin/bash

echo "Atualizando o servidor..."

apt update
apt upgrade -y

echo "Baixando e copiando os arquivos da aplicação..."

apt install apache2 -y
apt install unzip -y

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html

echo "Concluído!"

