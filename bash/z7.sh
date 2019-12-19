#!/bin/bash

#Funkcje (inaczej podprogramy)

#procedura
function moja {
    echo "Procedura"
}

#wywołanie procedury

Moja

x=1
while [ $x -le 10] ; do
    Moja
x=$[x + 1]
done