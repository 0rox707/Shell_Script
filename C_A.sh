#!/bin/bash
echo "--------"$'\n'"Criar arquivos"$'\n'"------------"$'\n'"Qual o nome do arquivo: "
read nome

if [ -e $nome ];then 
    echo "Este arquivo ja existe!"
else
    echo "Criando $nome!"
    touch $nome
    git add $nome
fi