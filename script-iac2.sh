#!/bin/bash

echo " "
echo " Atualizando o servidor !_!"
echo " "
apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo " "
echo " Baixando e copiando os arquivos da aplicação !_!"
echo " "

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
