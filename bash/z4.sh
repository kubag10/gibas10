#!/bin/bash

#operatory porównania
# -eq : == równy
# -gt : > większy
# -lt : < mniejszy
# -le : <= mniejszy lub równy
# -ge : >= większy lub równy
# -!= : równy

#warunek prosty
if [ 5 -gt 4 ]; then
echo true
else
echo false
fi

#warunek złożony
#operatory logiczne
# && : AND i
# || : OR lub
# !  : NOT nie
echo "warunek złożony"
if [ 5 -eq 5 ] && [ 5 -eq 6 ]; then
echo true
else 
echo false
fi

echo "logiczny NOT"
if ! [ 5 -eq 5 ]; then
echo true
else
echo false
fi

if [ 5 -eq 5 ]; then
echo "więcej od 5"
else
echo "mniej lub tyle samo niż 5"
fi

echo "Instrukcja wielokrotnego wyboru case"
echo -n "Podaj liczbę z zakresu od 1 do 12: "
read month

case ${month} in
"1") echo "January" ;;
"2") echo "February" ;;
"3") echo "March" ;;
"4") echo "April" ;;
"5") echo "May" ;;
"6") echo "June" ;;
"7") echo "July" ;;
"8") echo "August" ;;
"9") echo "September" ;;
"10") echo "November" ;;
"11") echo "October" ;;
"12") echo "December" ;;
*) echo "Podaj wartości z przedziału od 1 do 12: "
esac


echo "Instrukcja wyboru case"
echo -n "Podaj liczbę z zakresu od 1 do 7: "
read week

case ${week} in
"1")echo "Monday" ;;
"2")echo "Tuesday" ;;
"3")echo "Wednesday" ;;
"4")echo "Thursday" ;;
"5")echo "Friday" ;;
"6")echo "Saturday" ;;
"7")echo "Sunday" ;;
*)echo "wpisz liczbę od 1 do 7" ;;
esac
