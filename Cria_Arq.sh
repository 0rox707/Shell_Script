#!/bin/bash
clear
echo "--------"$'\n'"Criar arquivos"$'\n'"------------"
if [ -e $1 ];then 
    echo "Este arquivo ja existe!"
else
    echo "Criando $1!"
    touch $1
    
fi


while [ true ] ;do  
    clear
    echo "Gostaria de adicionar $1 ao versonamento git?"$'\n'"s/n"
    read c

    clear
    if [ $c = "S" ] || [ $c = "s" ];then
        echo "Adicionando $1 ao versonamento!"
        git add $1
        exit
    elif [ $c = "N" ] || [ $c = "n" ];then
        echo -n "Encerrando"
        i=0
        while [ $i -lt 2 ];do
        i=$(($i+1))
        echo -n "."
        sleep 0.8
        done
        echo "."
        exit
    else
        echo "Opção invalida!"
        sleep 2
    fi

done
