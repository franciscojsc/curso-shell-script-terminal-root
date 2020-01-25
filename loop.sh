#!/bin/bash

cd meu_diretorio/

for runlevel in 0 1 2 3 4
    do
        mkdir rc${runlevel}.d
        echo $runlevel
    done

for ((i=0;i<10;i++));
    do
        echo $i
    done

for i in {2..8}
    do
        echo $i
    done

for i in $(seq 28)
    do
        echo $i
    done

contador=0
while [ $contador -lt 10 ]; 
    do
        echo "O valor de contador " = $contador
        ((contador = contador + 1))
    done

COUNTER=20
until [ $COUNTER -lt 10 ];
    do
        echo "COUNTER" $COUNTER
        let COUNTER-=1
    done

_INPUT_STRING="Olá"
while [[ "$_INPUT_STRING" != "tchau" ]]
    do
        echo "Você deseja ficar aqui ?"
        read _INPUT_STRING

        if [[ $_INPUT_STRING = 'tchau' ]];
            then
                echo "Você disse Tchau"
        else
            echo "você ainda deseja fica aqui ?"
        fi
    done

for i in $(seq 1 10);
    do
        if [[ "$i" < "8" ]];
            then
                continue
        fi

        if [[ "$i" > "9" ]];
            then
                break;
        fi

        echo $i;
done
exit 0;