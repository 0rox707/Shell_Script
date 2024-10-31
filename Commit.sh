#!/bin/bash
clear
echo "Fazer commit"$'\n'"--------------"$'\n'"Mensagem de commit"
read msg
clear
git commit -m "$msg"
exit
