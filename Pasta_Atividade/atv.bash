#!/bin/bash
# atv.sh - Verifica se um parametro

# GitHub:         https://github.com/0rox707
# Autor:          João Victor Gomes
# =----------------------------------------------------=
# Verifica se o parametro inseriodo e maior que 10

# Exemplo: 
#     ./atv.bash
#     
# =----------------------------------------------------=
# Hitórico:
#     Versão 1
# =----------------------------------------------------=
# Testado em:
#      bash versão 5.2.21(1)
#=-----------------------------------------------------=
clear
echo "Atividade 3"
if [ $1 -gt 10 ]; then
    clear 
    echo "Nome: $0"$'\n'"PID de execução: $$"
fi






