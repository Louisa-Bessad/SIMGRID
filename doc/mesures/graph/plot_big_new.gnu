#!/usr/bin/env gnuplot

clear
reset
unset key

set lmargin at screen 0.1
#set rmargin at screen 0.1
set bmargin at screen 0.1

# Make the x axis labels easier to read.
#set xtics rotate out
# Select histogram data
set style data histogram
# Give the bars a plain fill pattern, and draw a solid line around them.
set style fill solid border
# We need to set lw in order for error bars to actually appear.
set style histogram errorbars linewidth 1
# Make the bars semi-transparent so that the errorbars are easier to see.
set style fill solid 0.3
set bars front

## Ajout de bibou
set title "Temps d'exécution lors de l'envoi d'un message de 1Mo \n en fonction du type d'exécution"
set ylabel  "Temps (sec)"
set xtics offset 5

## Ces deux lignes sont obligatoires pour générer des images
set term pngcairo dashe enhanced font 'Inconsolata,08'
set output "big.png"
## Fin de l'ajout de bibou
set grid ytics

plot 'graph2_big.dat' using 2:3:4:xticlabels(1) title columnheader
