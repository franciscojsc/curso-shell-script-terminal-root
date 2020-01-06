#!/bin/bash

MinhaFuncaoComIF(){
    VARIAVEL=$1;
    if test "$VARIAVEL" -gt 10
        then
            echo "é maior que 10"
    elif test "$VARIAVEL" -eq 10
        then
            echo "é igual a 10"
    else
            echo "e menor que 10"
    fi
}

MinhaFuncaoComIF $1

VARIAVEL=$1;
if [ "$VARIAVEL" -lt 10 ];
    then
         echo "é menor que 10"
elif test "$VARIAVEL" -eq 10
     then
        echo "é igual a 10"
else
        echo "e maior que 10"
fi

MinhaFuncaoComCase(){
    case $1 in
        10) echo "é 10" ;;
        9) echo "é 9" ;;
        7|8) echo "é 7 ou 8" ;;
        *) echo "é menor que 6 ou maior que 10";;
    esac
}

MinhaFuncaoComCase $1