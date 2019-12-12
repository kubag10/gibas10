#!/bin/bash


#loop for

for x in j d t
do
    echo ${x}
done


for plik in *.sh
do
    echo ${plik}
done


for plik1 in *
do
    echo ${plik1}
done


#i++ - i=i+1 inkrementacja
#i-- - i=1-1 inkrementacja
# i++ to jest to samo co i=i+1
#kroki po kolei
#i=1 1<=3 -> true i=1+1
#i=2 2<=3 -> true i=2+1
#i+3 2<=3 -> true i=3+1
#i+4 2<=3 -> false koniec

for ((i=1; i<=3; i ++))
do
    echo ${i}
done


#pętla while (dopuki warunek jest spełniony polecenie jest wykonywane)
j=1

while [ ${j} -le 5 ] ; do
    echo -ne "\0227"
    j=$[j+1]
done

j=1

while [ ${j} -le 50 ] ; do
    echo -e "\0227"
    j=$[j+1]
done

j=1

while [ ${j} -le 30 ] ; do
    echo -ne "\0227"
    j=$[j+1]
done