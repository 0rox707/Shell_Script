#!/bin/bash
clear
echo "   Deletar arquivos"$'\n'"---------------------"
ls
if [ -e $1 ];then 
    rm $1 
else
    echo "Este arquivo não existe!"
fi

while [ true ];do 
    echo "Remover do vercionamento?"$'\n'"s/n"

    read sc

    if [ $sc = "S" ] || [ $sc = "s" ];then
        git rm $1
        clear
        echo "Arquivo $1 removido do versionamento"
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