#!/bin/bash

#Pipe/Pipeline(|):Liga o stdout de um programa ao stdin de outro.
#Write(>):Redireciona o stdout para outro local(um arquivo, por exemplo).
#Append(>>):Anexa o stdout para outro local(um arquivo, por exemplo).

touch lista.txt
cat lista.txt
echo "Esse conteúdo" > lista.txt #write >
cat lista.txt
echo "Outro conteúdo" > lista.txt #write >
cat lista.txt
echo "Esse conteúdo" >> lista.txt #append
cat lista.txt
echo -e "Jaca\nAbacaxi\nPera\nAbacaxi\nMaçã" > lista.txt
cat lista.txt
cat lista.txt | sort #pipe - ordenar
cat lista.txt | uniq #pipe - unico
cat lista.txt | sort | uniq #pipe - ordenar e unico