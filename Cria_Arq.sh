#!/bin/bash

# Cria_Arq.sh - Cria arquivos

# GitHub:         https://github.com/0rox707
# Autor:          João Victor Gomes
# =--------------------------------------------------------=
# Cria arquivos e adiciona no versionamento git.

# Exemplo: 
#     ./Cria_Arq.sh Nome_arqiuvo
# =--------------------------------------------------------=
# Hitórico:
# versão 1.1 (atual)
# =--------------------------------------------------------=
# Testado em:
#     bash 3.2.57(1)
# ==========================================================



clear
echo "--------"$'\n'"Criar arquivos"$'\n'"------------"
if [ -e $1 ];then 
    echo "Este arquivo ja existe!"
elif [ -z $1 ];then 
    l=0
    # while 0 -eq $l;do
    echo "Digite o nome do arquivo: "$'\n'"(Caso queira sair utilize //c )"
    read r
    # if [ "$r" = "//c"  ] || [ "$r" = "//C" ];then
    #     echo "encerrando"
    #     exit
    #     elif [ -n "$r" ];then 
    #         $1="$r"
    #         $l=1
    #     else
    #         echo "Opção invalida"
    # fi
    # done
    
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
