#!/usr/bin/gnuplot
set encoding iso_8859_1
set terminal pngcairo enhanced colour font "Times New Roman,44" size 1224, 928
set output "MoS2_AlS.pdos_tot.emf"

set key at 3.4,20 font "Times New Roman" 
set xrange [-4:4]
dim=20
set xtics 2
set ytics 2
set yrange [0:dim]
set arrow 1 from 0.15,0 to 0.15,dim nohead lw 3 dashtype '---' front
set ylabel "PDOS (electrons/eV)" font "Times New Roman Bold"
set xlabel "Energy (eV)" font "Times New Roman Bold"
set xtics nomirror in
set ytics nomirror in
set style fill  transparent solid 0.15 noborder
set style data lines
set style function filledcurves y1=0
unset colorbox

p 'MoS2_AlS.pdos_tot' u ($1+1.7116):3 w l lw 5 lc rgb "black" title 'Total',\
  'Mo_5s.dat' u ($1+1.7116):2 w l lw 5 lc rgb '#0060ad' title 'Mo 5s',\
  'Mo_4p.dat' u ($1+1.7116):2 w l lw 5 lc rgb "#00FF00" title 'Mo 4p',\
  'Mo_4d.dat' u ($1+1.7116):2 w l lw 5 lc rgb "magenta" title 'Mo 4d',\
  'Al_3s.dat' u ($1+1.7116):2 w l lw 5 lc rgb '#dd181f' title 'Al 3s',\
  'Al_3p.dat' u ($1+1.7116):2 w l lw 5 lc rgb '#808000' title 'Al 3p',\
  'S_3s.dat' u ($1+1.7116):2 w l lw 5 lc rgb 'yellow' title 'S 3s',\
  'S_3p.dat' u ($1+1.7116):2 w l lw 5 lc rgb '#CCCCFF' title 'S 3p',\
  'MoS2_AlS.pdos_tot' u ($1+1.7116):3 with filledcurves lc rgb "black" notitle,\
  'Mo_5s.dat' u ($1+1.7116):2 with filledcurves lc rgb '#0060ad' notitle,\
  'Mo_4p.dat' u ($1+1.7116):2 with filledcurves lc rgb "#00FF00" notitle,\
  'Mo_4d.dat' u ($1+1.7116):2 with filledcurves lc rgb "magenta" notitle,\
  'Al_3s.dat' u ($1+1.7116):2 with filledcurves lc rgb '#dd181f' notitle,
  'Al_3p.dat' u ($1+1.7116):2 with filledcurves lc rgb '#808000' notitle,
  'S_3s.dat' u ($1+1.7116):2 with filledcurves lc rgb 'yellow' notitle,
  'S_3p.dat' u ($1+1.7116):2 with filledcurves lc rgb '#CCCCFF' notitle,
