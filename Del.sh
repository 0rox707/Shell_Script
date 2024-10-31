#!/bin/bash
echo "   Deletar arquivos"$'\n'"---------------------"
ls
echo "---------------------"$'\n'"Qual arquivo gostaria de deletar:"
read nome

if [ -e $nome ];then 
    rm $nome 
    git rm --cached $nome
else
    echo "Este arquivo não existe!"
fi
