#!/bin/bash

mundo=("Shell Script" "Bash" "GNU" "Linux" "Debian")
echo ${mundo[0]} #pegua o elemento na posição 0
echo ${mundo[1]} #pegua o elemento na posição 1

mundo[0]="Nada" #Alterando o valor na posição 0
echo ${mundo[0]}

echo ${mundo[@]} #imprimir todos os valores do array
echo ${#mundo[@]} #quantidade de elementos do array

echo ${mundo[@]:2} #imprimir os valores da posição 0 até a posição 2
echo ${mundo[@]:1:2} #imprimir os valores da posição 1 até a posição 2

unset mundo[2] #deleta o valor na posição determinada
echo ${mundo[*]}

unset mundo #deleta o array
echo ${mundo[@]}