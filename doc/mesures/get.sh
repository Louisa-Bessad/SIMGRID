#! /bin/bash

# argument 1 script mesures
cpt=0
tableau=( 0 0 10 10 11 11 1 10 10 1 13 13 14 14 15 15 16 16 17 17 18 18 19 19 20 20 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9)

for i in `ls little_msg`
do
    echo $i
    if [ "$i" == "$1.${tableau[$cpt]}.1.txt" ]; then
        grep -A 3 User little_msg/$i >> $i.1.txt
    fi
    if [ "$i" == "$1.${tableau[$cpt]}.2.txt" ]; then
    	grep -A 2 "End of simulation" little_msg/$i >> $i.2.txt
    fi

    let cpt++
    echo $cpt
done
