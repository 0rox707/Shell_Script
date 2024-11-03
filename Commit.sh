#!/bin/bash
clear
echo "Fazer commit"$'\n'"--------------"$'\n'"Mensagem de commit"$'\n'"Para cancelar o Commit digite //c"
read msg
clear
if [ $msg = "//c" ] || [ $msg = "//C" ];then 
    i=0
    echo -n "encerrando"
    while [ $i -lt 2 ];do
    i=$(( $i + 1 ))
    echo -n "."
    sleep 0.5
    done
    echo "."
    exit
    
fi
git commit -m "$msg"
while [ 0 -eq 0 ];do
    clear
    echo "Gostaria de da push para o repertorio remoto"$'\n'"s/n"
    read r
    if [ $r = "s" ] || [ $s = "S" ];then
        git push -u origin master
        echo "push feito com sucesso!"
        exit
    elif [ $r == "N" ] || [ $s == "n" ];then
        echo "encerando!"
        exit
    else
        echo "Opção invalida!!"
    fi
done




