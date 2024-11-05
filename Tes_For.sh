#!/bin/bash

echo "Teste de For"$'\n'"Insira ate que numero o deve contar: "
read t
while [ true ];do
    clear
    if [ $t -lt 0 ];then 
        #  t= -3   l = 0
        for((l = 0;$l -gt $t;$l--));do
            
            echo "i -> $l"
            sleep 0.8
            clear
            
        done
        echo "aqui! "
        exit
    elif [ $t -ge 0 ];then
        for((l=0;$l -le $t;l++));do
            echo "i -> $l"
            sleep 0.8
            
        done
        echo "entrou no elif"
    else
        echo "Opção invalida"
        sleep 0.7
    fi
done

