#!/bin/bash
echo "Modificar nome arquivo"$'\n'"---------------"
ls
echo "Qual arquivo quer modificar: "
ls
read old

if [ -e $old ];then
    echo "Arquivo $old ja existe"
    exit
fi
echo "Novo nome: "
read new

mv $new 
git add $new