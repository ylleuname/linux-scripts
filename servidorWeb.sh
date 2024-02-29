#!/bin/bash

#atualizar o sistema
sudo apt-get update
sudo apt-get upgrade -y

#instalar o apache
sudo install apache2

#verificar se o apache esta funcionando
systemctl status apache2

#ir ate o diretório do apache para configurar a interface web conforme desejar, alterando o arquivo index.html 
#ou copiando seus arquivos html, css e/ou javascript para dentro do diretorio que esta abaixo.
cd /var/www/html/

#dá permissão de execucao para o script
chmod +x servidor-web.sh

