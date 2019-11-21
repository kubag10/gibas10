#!/bin/bash
#cytowanie "" duble quote
echo -e "Polecenie \t ls\n"
#użycie ``
echo "wynik ls: `ls`"
#apostrof single quote ''
echo 'Polecenie /t ls /n'
#zmienne
x=10
echo "Zmienna x: ${x}"
echo 'Zmienna x: ${x}'
#pwd
WD=`pwd`
echo ${WD}
#zmienne tablicowe
tab=(1 3 5)
echo ${tab[0]}
echo ${tab[1]}
echo ${tab[2]}

echo ${tab[*]}
#Ilość elemetów tablicy
echo "Ilość elementów:" ${#tab[@]}
#Modyfikacja wartości zmiennych
echo ${#tab[@]}