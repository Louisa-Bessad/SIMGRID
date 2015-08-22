#! /bin/bash

# argument 1 script mesures
# argument 2 folder
# argument 3 mediation
# argument 4 experience type

cpt=0
tableau=( 10 10 1 1 2 2 3 3 4 4 5 5 6 6 7 7 8 8 9 9 )

if [ "$4" == "little_msg" ]; then
    for i in `ls $4/$2/$3`
    do
	echo $i
	if [ "$i" == "$1.${tableau[$cpt]}.1.txt" ]; then
            grep -A 3 User $4/$2/$3/$i >> $4/$2/$3.1.txt
	    echo "----------------------------" >> $4/$2/$3.1.txt
	fi
	if [ "$i" == "$1.${tableau[$cpt]}.2.txt" ]; then
    	    grep -A 2 "End of simulation" $4/$2/$3/$i >> $4/$2/$3.2.txt
	    echo "----------------------------" >> $4/$2/$3.2.txt
	fi
	
    let cpt++
    echo $cpt
    done
fi

if [ "$4" == "big_msg" ]; then
    for i in `ls $4/$2/$3`
    do
	echo $i
	if [ "$i" == "$1.${tableau[$cpt]}.1.txt" ]; then
            grep -A 3 User $4/$2/$3/$i >> $4/$2/$3.1.txt
	    echo "----------------------------" >> $4/$2/$3.1.txt
	fi
	if [ "$i" == "$1.${tableau[$cpt]}.2.txt" ]; then
    	    grep -A 2 "End of simulation" $4/$2/$3/$i >> $4/$2/$3.2.txt
	    echo "----------------------------" >> $4/$2/$3.2.txt
	fi
     
    let cpt++
    echo $cpt
    done
fi
