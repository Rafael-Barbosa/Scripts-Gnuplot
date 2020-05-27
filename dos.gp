#set term png
#set output "dos.png"
fermi=6.4397
ymin=0
ymax=3
xmin=-4
xmax=3
set border linewidth 2.0
set style arrow 2 nohead lw 1
set style arrow 1 nohead ls 5 lc rgb "blue" lw 1.5
set arrow arrowstyle 2 from 0,ymin to 0,ymax as 1
set ylabel "Density of states"
set xlabel "Energy (eV)"
plot [xmin:xmax][ymin:ymax] "silicon.pdos_tot" u ($1-fermi):2 with lines lc 8 lw 2 title "Total",\
"silicon.pdos_atm#1\(Si\)_wfc#1\(s\)" u ($1-fermi):2 with lines lc 1 lw 2 title"S",\
"silicon.pdos_atm#1\(Si\)_wfc#2\(p\)" u ($1-fermi):2 with lines lc 2 lw 2 title "P";

pause -1
