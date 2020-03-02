#!/bin/bash

echo $((2+2))
echo $((2+2*5))
echo $((2+2*5/2))

a=2+2; echo $a
declare -i a
a=2+2; echo $a

echo "5/2" | bc
echo "scale=2;5/2" | bc

expr 2 + 2

bc <<< 2+2

echo '2 8 * p' | dc

echo "obase=2;1" | bc
echo "obase=2;0" | bc
echo "obase=2;2" | bc
echo "obase=2;10" | bc

echo "Root" | wc -c #sempre utilizar subtrair 1, para corrigir
expr length "Root"