#!/bin/bash

echo "atualizando servidor..."

apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

cd /temp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Baixando e copiando os arquivos da aplicação..."

cd linux-site-dio-main
cp -R * /var/www/html

echo "Feito..."
