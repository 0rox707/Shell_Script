#!/bin/bash
clear
echo "Fazer commit"$'\n'"--------------"$'\n'"Mensagem de commit"$'\n'"Para cancelar o Commit digite //c"
read msg
clear
if [ $msg = "//c" ];then 
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
exit
