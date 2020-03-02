#!/bin/bash

SAIDA=$(yad --form --image xubuntu-logo.svg --image-top \
    --title "Francisco Chaves" \
    --text "Exemplo <b>YAD</b> por <big><b>Francisco Chaves</b></big>" \
    --field Nome '' \
    --field Nascimento:DT 08/02/1992 \
    --field "Há quanto tempo usa <b>Linux</b>:NUM" '1!0..20!1' \
    --field "Sites preferidos:CB" 'Francisco Chaves!Terminal Root!Br-Linux!Dicas-l!Viva o Linux!Outros' \
    --field "Vou passar a uasr o yad:CHK" TRUE \
    --field "Vou continuar usando zenity:CHK")

echo $SAIDA

# Expansão de variável para subtituir as ocorrências de uma palavra por outra 
echo ${SAIDA//|/,} >> saida.csv
