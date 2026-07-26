#!/usr/bin/gnuplot
set encoding iso_8859_1
set terminal pngcairo  transparent enhanced font "Times New Roman,40" size 1024, 728
set output "Absorbance_eels.emf"

set key top left Left reverse samplen 1
set xrange [0:8]
dim=25
set xtics 1
set ytics 5
set yrange [0:dim]
set ylabel "Absorption (10^{1} cm^{-1})" font "Times New Roman Bold"
set xlabel "Energy (eV)" font "Times New Roman Bold"
set xtics nomirror in
set ytics nomirror in

p 'eels_MoS2.dat' u 1:($2*10) w l lw 5 lc rgb "black" title 'MoS_2',\
  'eels_AlS.dat' u 1:($2*10) w l lw 5 lc rgb "blue" title 'AlS',\
  'eels_MoS2_AlS.dat' u 1:($2*10) w l lw 5 lc rgb "red" title 'MoS_2/AlS',