#!/usr/bin/gnuplot
set encoding iso_8859_1
set terminal pngcairo  transparent enhanced font "Times New Roman,44" size 1024, 728
set output "MoS2_AlS_bulk.bands.dat.gnu.emf"
set key off

set xrange [0: 1.5774]
set yrange [-4 : 6]
set arrow 1 from 0,0 to 1.5774,0 nohead lw 5 dashtype '---' front
set arrow 2 from 0,2.33 to 1.0,2.33 nohead lw 5 dashtype '---' lc rgb "#FF00FF" 
set arrow from 0.91,0 to 0.91,2.33 heads lw 5 lc rgb "blue" front  

set ytics 2
set ylabel "Energy (eV)" font "Times New Roman Bold,44"
set arrow from  0.5774,-4 to  0.5774,  6 nohead
set arrow from  0.9107,-4 to  0.9107,  6 nohead
set xtics ("{/Symbol G}"  0.00000,"M"  0.5774,"K"  0.9107,"{/Symbol G}"  1.5774)
set label 7 "E_g = 2.38 eV" at 0.22, 1.3 font "Times New Roman,44" tc "red"
set ytics nomirror in

 plot "MoS2_AlS_bands.bands.dat.gnu" u 1:($2+1.7116) w l lw 5 lc rgb 'black'
