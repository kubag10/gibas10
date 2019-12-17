#!/bin/bash

#Pętla until (wykonuje działanie jeżeli warunek jest fałszywy aż do momentu gdy warunek zostanie spełniony)

i=1

until [ ${i} -eq 10 ]; do
    echo ${i}
    i=$[i+1]
done

#Pętla select

echo "Podaj opcje:"

select opcja in File Edit Quit
do
    case ${opcja} in
	"File") echo "Wybrano opcje ${opcja}" ;;
	"Edit") echo "Wybrano opcje ${opcja}" ;;
	"Quit") exit ;;
	*) echo "Podaj liczby z zakresu [1...3]" ;;
    esac
done
