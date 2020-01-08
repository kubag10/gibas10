#!/bin/bash

function loadUsers() {
    echo "loadUsers"
}

function showUsers() {
    echo "showUsers"
}

function addUsers() {
    echo "addUsers"
}

function delUsers() {
    echo "delUsers"
}

function acceptRemoteLogin() {
    echo "acceptRemotUsers"
}

function deniRemoteLogin() {
    echo "deniRemotUsers"
}

function Quit() {
    exit 0
}

function Help() {
cat << EndOfMessage
    Opis opcji skryptu:
    -------------------
    LU
    SU
EndOfMessage
}

#menu
select option in LU SU AU DU ARL DRL HELP QUIT
do
    case ${option} in
	"LU") loadUsers ;;
	"SU") showUsers ;;
	"AU") addUsers ;;
	"DU") delUsers ;;
	"ARL") acceptRemoteLogin ;;
	"DRL") deniRemoteLogin ;;
	"HELP") help ;;
	"QUIT") quit ;;
	    *) help  ;;
    esac