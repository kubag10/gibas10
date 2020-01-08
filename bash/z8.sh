#!/bin/bash

# Definiowanie funkcji
function f1() {
    echo -n "Podaj nazwę użytkownika"
    read username
}

function f2() {
    echo -n "Podaj numer użytkownika"
    read usernumer
}

function f3() {
    echo -n "Coś"
}
# Menu skryptu

select opcja in f1 f2 f3 Quit
do
case ${opcja} in
	"f1") f1 ;;
	"f2") f2 ;;
	"f3") f3 ;;
	"Quit") exit 0 ;;
	*) echo "Podaj opcjw z menu"
    esac
done

