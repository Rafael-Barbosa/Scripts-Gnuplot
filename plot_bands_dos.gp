set multiplot 
set size 0.8, 1
set rmargin 0
set border linewidth 2.0
set yrange[-6:6]
set xrange[0:6.41]
set ylabel "Energy (eV)"
set xtics ("{/Symbol G}" 0, "X" 0.90, "W" 1.45, "K" 1.81, "{/Symbol G}" 2.80, "L" 3.69, "U" 4.33, "W" 4.71, "L" 5.38, "K" 6.20, "U" 6.41)
plot  "si.band.gnu" u 1:($2-6.19) with lines lc 8 lw 2 notitle

unset xtics
set size 0.2,1 
set title " "
set ytics("" -4, "" -2, "" 0, "" 2, "" 4, "" 6)
set origin 0.8,0
set lmargin 0.5
set bmargin 2
set tmargin 1
set border linewidth 2.0
set style arrow 2 nohead lw 1
set yrange [-6:6]
set xr[0:2.5]
set noylabel
set style arrow 1 nohead ls 5 lc rgb "blue" lw 1.5
p "dos/silicion.pdos_tot" u 2:($1-6.19) with lines lc 8 lw 2 notitle


pause -1

