#!/bin/bash

echo "Atualizar o servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Download e copia dos arquivos do apache atualizado do projeto"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Script Finalizado."

sleep 10

exit
