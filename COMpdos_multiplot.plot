#!/usr/bin/gnuplot
set encoding iso_8859_1
set terminal pngcairo enhanced colour font "Times New Roman,28" size 824, 628
set output "pdos2_multiplot.emf"

set lmargin 8
set rmargin 3

TOP = 0.94
DY = 0.24

set multiplot
set offset 0,0,graph 0.05, graph 0.05
set xlabel 'Energy (eV)' font "Times New Roman Bold"
set format x
set origin 0.0,0.0
unset ylabel
set tmargin at screen TOP-2*DY
set bmargin at screen TOP-3*DY
set xrange [-4:4]
set key at 2.3,6 Left reverse samplen 1 font "Times New Roman" vertical maxrows 3
dim=6
set xtics 2
set ytics 2
set yrange [0:dim]
set arrow 1 from 0,0 to 0,dim nohead lw 2 dashtype '---' front
set style fill  transparent solid 0.20 noborder
set style data lines
set style function filledcurves y1=0
unset colorbox
set xtics nomirror in
set ytics nomirror in

p 'Al_3s.dat' u ($1+1.6216):2 w l lw 5 lc rgb '#0060ad' title 'Al 3s',\
  'Al_3P.dat' u ($1+1.6216):2 w l lw 5 lc rgb "#00FF00" title 'Al 3p',\
  'S_3s.dat' u ($1+1.6216):2 w l lw 5 lc rgb "magenta" title 'S 3s',\
  'S_3p.dat' u ($1+1.6216):2 w l lw 5 lc rgb '#dd181f' title 'S 3p',\
  'Al_3s.dat' u ($1+1.6216):2 with filledcurves lc rgb '#0060ad' notitle,\
  'Al_3P.dat' u ($1+1.6216):2 with filledcurves lc rgb "#00FF00" notitle,\
  'S_3s.dat' u ($1+1.6216):2 with filledcurves lc rgb "magenta" notitle,\
  'S_3p.dat' u ($1+1.6216):2 with filledcurves lc rgb '#dd181f' notitle,

set format x ""
set origin 0.0,0.5
unset xlabel
set ylabel 'DOS (states/eV)' font "Times New Roman Bold" offset 0
set tmargin at screen TOP-DY
set bmargin at screen TOP-2*DY
set key at 3.5,8 font "Times New Roman" vertical maxrows 2
dim=8
set xtics 2
set ytics 2
set yrange [0:dim]
set arrow 1 from 0,0 to 0,dim nohead lw 2 dashtype '---' front
set style fill  transparent solid 0.20 noborder
set style data lines
set style function filledcurves y1=0
unset colorbox
set xtics nomirror in
set ytics nomirror in

p 'Mo_5s.dat' u ($1+1.6216):2 w l lw 5 lc rgb '#0060ad' title 'Mo 5s',\
  'Mo_4p.dat' u ($1+1.6216):2 w l lw 5 lc rgb "#00FF00" title 'Mo 4p',\
  'Mo_4d.dat' u ($1+1.6216):2 w l lw 5 lc rgb "yellow" title 'Mo 4d',\
  'S_3s.dat' u ($1+1.6216):2 w l lw 5 lc rgb "magenta" title 'S 3s',\
  'S_3p.dat' u ($1+1.6216):2 w l lw 5 lc rgb '#dd181f' title 'S 3p',\
  'Mo_5s.dat' u ($1+1.6216):2 with filledcurves lc rgb '#0060ad' notitle,\
  'Mo_4p.dat' u ($1+1.6216):2 with filledcurves lc rgb "#00FF00" notitle,\
  'Mo_4d.dat' u ($1+1.6216):2 with filledcurves lc rgb "yellow" notitle,\
  'S_3s.dat' u ($1+1.6216):2 with filledcurves lc rgb "magenta" notitle,\
  'S_3p.dat' u ($1+1.6216):2 with filledcurves lc rgb '#dd181f' notitle,

set tmargin at screen TOP
set bmargin at screen TOP-DY
set key at 2.3,15 vertical maxrows 3
unset ylabel
set format x ""
unset xlabel
dim=15
set xtics 2
set ytics 5
set yrange [0:dim]
set arrow 1 from 0,0 to 0,dim nohead lw 2 dashtype '---' front
set style fill  transparent solid 0.20 noborder
set style data lines
set style function filledcurves y1=0
unset colorbox
set xtics nomirror in
set ytics nomirror in

p 'MoS2_AlS.pdos_tot' u ($1+1.6216):3 w l lw 4 lc "black" title 'Total',\
  'AlS.dat' u ($1+1.6216):2 w l lw 4 lc rgb '#808000' title 'AlS',\
  'MoS2.dat' u ($1+1.6216):2 w l lw 4 lc rgb '#000080' title 'MoS_2',\
  'MoS2_AlS.pdos_tot' u ($1+1.6216):3 with filledcurves lc "black" notitle,\
  'AlS.dat' u ($1+1.6216):2 with filledcurves lc rgb '#808000' notitle,\
  'MoS2.dat' u ($1+1.6216):2 with filledcurves lc rgb '#000080' notitle,

unset multiplot; set output