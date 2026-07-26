#!/usr/bin/gnuplot
set encoding iso_8859_1
set terminal pngcairo  transparent enhanced font "Times New Roman,40" size 1224, 928
set output "real_part.emf"

set key top left Left reverse samplen 1
set xrange [0:10]
dim=10
set xtics 1
set ytics 2
set yrange [-2:dim]
set ylabel "Real part, {/Symbol e}_1({/Symbol w})" font "Times New Roman Bold"
set xlabel "Energy (eV)" font "Times New Roman Bold,44"
set xtics nomirror in
set ytics nomirror in

p 'epsr_MoS2.dat' u 1:2 w l lw 5 lc rgb "black" title 'MoS_2',\
  'epsr_AlS.dat' u 1:2 w l lw 5 lc rgb "blue" title 'AlS',\
  'epsr_MoS2_AlS.dat' u 1:2 w l lw 5 lc rgb "red" title 'MoS_2/AlS',