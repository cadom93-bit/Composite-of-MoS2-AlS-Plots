`#!/usr/bin/gnuplot
set encoding iso_8859_1
set terminal pngcairo  transparent enhanced font "Times New Roman,30" size 1224, 928
set output "electrostatic potential.emf"

set xlabel "Z (\305)" font "Times New Roman Bold"
set ylabel "Potential (eV)" font "Times New Roman Bold"
set arrow 1 from 0,1.0906 to 30,1.0906 nohead lw 5 lc "black" dashtype '---' front
set arrow 3 from 21,-25 to 13.5,-25 nohead lw 4 lc rgb '#FF00FF' dashtype '---' front
set arrow 4 from 17,-13.2 to 13.5,-13.2 nohead lw 4 lc rgb '#FF00FF' dashtype '---' front
set arrow 5 from 14.3,-25 to 14.3,-13.2 heads lw 3 lc rgb '#0000FF' front

set ytics 5
set xrange [0:30]
set yrange [-35:10]
set key bottom left
set xtics nomirror in
set ytics nomirror in

set label 7 "{/Symbol F} = 5.44 eV" at 24, 3 font "Times New Roman Bold"
set label 8 "{/Symbol D}V = 12.04 eV" at 6, -20 font "Times New Roman Bold" 
set label 9 "AlS" at 9,11 font "Times New Roman"
set label 11 "MoS_2" at 19,11 font "Times New Roman"

plot "avg.dat" u ($1*0.52918):($2*13.6058) w l lw 5 lc rgb '#000000' title 'plane-average',\
     "avg.dat" u ($1*0.52918):($3*13.6058) w l lw 5 lc rgb '#FFA005' title 'macroscopic average',