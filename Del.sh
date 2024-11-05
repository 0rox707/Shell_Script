#!/bin/bash
# <nome do codigo>.sh - <Oque o codigo faz!>

# GitHub:         https://github.com/0rox707
# Autor:          João Victor Gomes
# =--------------------------------------------------------=
# <Detalha oque p programa ira fazer>

# Exemplo: 
#     ./Del Arquivo_Delete
#     <Explicação dos parametros caso nessessario>
# =--------------------------------------------------------=
# Hitórico:
#     Versão 1
# =--------------------------------------------------------=
# Testado em:
#     3.2.57(1)
# ==========================================================
    

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