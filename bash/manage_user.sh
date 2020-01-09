#!/bin/bash

#Zmienna globalna
#ładowanie użytkowników
user_list=(`cat users.txt`)

function showUsers() {
    echo "showUsers ..."
    echo "Lista"
    for(( i=0; i<=${#user_list[@]}; i++ ))
    do
	echo "	${user_list[i]}"
    done
}

function addUsers() {
    echo "addUsers ..."
    for user in "${user_list[@]}"
    do
	echo "Add user: ${user}"
	useradd ${user} -s /sbin/nologin -g users 
    done
}

function delUsers() {
    echo "delUsers ..."
}

function acceptRemoteLogin() {
    echo "acceptRemotUsers ..."
}

function deniRemoteLogin() {
    echo "deniRemotUsers ..."
}

function quit() {
    exit 0
}

function Help() {
cat << EndOfMessage
    Opis opcji skryptu:
    -------------------
    SU-pokarz urzytkowników z pliku
    AU-dodawanie urzytkowników z pliku
EndOfMessage
}

#menu
select option in SU AU DU ARL DRL HELP QUIT
do
    case ${option} in
	"SU") showUsers ;;
	"AU") addUsers ;;
	"DU") delUsers ;;
	"ARL") acceptRemoteLogin ;;
	"DRL") deniRemoteLogin ;;
	"HELP") help ;;
	"QUIT") quit ;;
	    *) help  ;;
    esac
done