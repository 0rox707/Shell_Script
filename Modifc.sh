#!/bin/bash
echo "Modificar nome arquivo"$'\n'"---------------"
ls
echo "Qual arquivo quer modificar: "

read old

if [ -e $old ];then
    echo "Novo nome: "
    read new
    
else
    echo "arquivo $old não existe!"
    exit
fi

mv $old $new  
git add $new