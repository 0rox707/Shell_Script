#!/bin/bash
clear
echo "   Deletar arquivos"$'\n'"---------------------"
ls
echo "---------------------"$'\n'"Qual arquivo gostaria de deletar:"
read nome

if [ -e $nome ];then 
    rm $nome 
else
    echo "Este arquivo não existe!"
fi

while [ true ];do 
    echo "Remover do vercionamento?"$'\n'"s/n"

    read sc

    if [ $sc = "S" ] || [ $sc = "s" ];then
        git rm $nome
        clear
        echo "Arquivo $nome removido do versionamento"
        exit
    elif [ $sc = "N" ] || [ $sc = "n" ];then
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
        sleep 0.85
        clear
    fi
done