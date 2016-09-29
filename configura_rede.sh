#Daniel Roberto Mendes -REDES-
#Este script tem como objetivo pegar um IP automático do DHCP e nomear o computador com seu nome. 
#!/bin/bash


#Interage com o usuário solicitando o nome da inteface de rede
echo "Qual o nome da sua interface de rede?"
#Efetua a leitura da informação passado pelo usuário
read interface
#Força o uso do DHCP na interface informazada
sudo dhclient $interface

#Inseri uma linha de espaço
echo ""
#Interage com o usuário solicitando um nome para o computador
echo "Digite seu nome_sobrenome para renomear o computador:"
#Efetua a leitura da informação passada pelo usuário
read nome
#Força o uso do comando "hostname" para mostrar o resultado no terminal 
sudo hostname $nome


 
