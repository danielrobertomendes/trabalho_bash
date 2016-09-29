#Daniel Roberto Mendes -REDES-
#Este script tem como objetivo instalar o SSH e modificar sua porta de comunicação para 1000
#!/bin/bash

#Demonstra para o usuário o que vai ser feito.
echo "Instalando OpenSSH Server."
#Força a instalação do OpenSSH Server
sudo apt-get install openssh-server

#Demonstra para o usuário que a porta de comunicação vai ser modificada para 1000
echo "Modificar porta padrão do SSH para 1000."
#Comando para acessar a pasta do ssh
cd /etc/ssh/
#Força a mudança da porta de comunicação 22 para 1000
sudo echo "$(sed 's/Port 22/Port 1000/g' /etc/ssh/sshd_config)" > /etc/ssh/sshd_config


