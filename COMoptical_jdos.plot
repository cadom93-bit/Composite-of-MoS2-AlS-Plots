#!/usr/bin/gnuplot
set encoding iso_8859_1
set terminal pngcairo transparent enhanced font "Times New Roman,40" size 1024, 728
set output "Absorbance.emf"

set key top left Left reverse samplen 1
set xrange [0:10]
dim=60
set xtics 2
set ytics 15
set yrange [0:dim]
set ylabel "Absorption (10^{3} cm^{-1})" font "Times New Roman Bold"
set xlabel "Energy (eV)" font "Times New Roman Bold,44"
set xtics nomirror in
set ytics nomirror in

p 'jdos_MoS2.dat' u 1:($2*1000) w l lw 5 lc rgb "black" title 'MoS_2',\
  'jdos_AlS.dat' u 1:($2*1000) w l lw 5 lc rgb "blue" title 'AlS',\
  'jdos_MoS2_AlS.dat' u 1:($2*1000) w l lw 5 lc rgb "red" title 'MoS_2/AlS',