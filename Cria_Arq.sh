#!/bin/bash
clear
echo "--------"$'\n'"Criar arquivos"$'\n'"------------"$'\n'"Qual o nome do arquivo: "
read nome
clear
if [ -e $nome ];then 
    echo "Este arquivo ja existe!"
else
    echo "Criando $nome!"
    touch $nome
    
fi


while [ true ] ;do  
    clear
    echo "Gostaria de adicionar $nome ao versonamento git?"$'\n'"s/n"
    read c

    clear
    if [ $c = "S" ] || [ $c = "s" ];then
        echo "Adicionando $nome ao versonamento!"
        git add $nome
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
