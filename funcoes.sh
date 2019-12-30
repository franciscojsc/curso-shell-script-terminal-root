#!/bin/bash
MinhaFuncao(){
    echo "Essa é minha função"
}
MinhaFuncao #saída: Essa é minha função

MinhaFuncaoParam(){
    echo "Desenvolvo em $2 $1"
}

MinhaFuncaoParam $1 $2 #saída: Desenvolvo em Script Shell

MinhaFuncaoParamTotal(){
    echo "Todos os parâmentros que você passou: $@"
    echo "Total de parâmentos: " $#
}

MinhaFuncaoParamTotal $@
echo $? #o valor zero indica que ocorreu tudo bem

MinhaFuncaoRetorno(){
    local OLA="Olá" #variável local
    OI="Oi" #variável global
    echo "Isso será exibido"
    return
    echo "Isso não será exibido, pois foi após o return"
}

MinhaFuncaoRetorno
echo $OLA
echo $OI

declare -r MinhaConstante='Isso é constante'
echo $MinhaConstante

unset MinhaFuncao #deleta a funcão
#MinhaFuncao

cd(){
    echo "Olá"
}

builtin cd meu_diretorio/ #com o builtin utilizar o comando do bash, sem o builtin ele pegaria a funcao cd criada acima
ls
