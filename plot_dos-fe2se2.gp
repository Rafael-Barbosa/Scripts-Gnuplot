#set term png
#set output "dos.png"
fermi=-0.8045
ymin=-6
ymax=2
xmin=-4
xmax=4
set border linewidth 2.0
set style arrow 2 nohead lw 1
set style arrow 1 nohead ls 5 lc rgb "blue" lw 1.5
set arrow arrowstyle 2 from xmin,0 to xmax,0 as 1
set ylabel "Energy (eV)"
set xlabel "Density of states"
plot [xmin:xmax][ymin:ymax] "Fe2Se2-FeSe.pdos_atm#1\(Fe1\)_wfc#1\(s\)" u 2:($1-fermi) with lines lc 1 lw 2 title"Fe (s)",\
"Fe2Se2-FeSe.pdos_atm#2\(Fe2\)_wfc#1\(s\)" u ($2*(-1)):($1-fermi) with lines lc 1 lw 2 notitle, \
"Fe2Se2-FeSe.pdos_atm#1\(Fe1\)_wfc#2\(p\)" u 2:($1-fermi) with lines lc 2 lw 2 title"Fe (p)",\
"Fe2Se2-FeSe.pdos_atm#2\(Fe2\)_wfc#2\(p\)" u ($2*(-1)):($1-fermi) with lines lc 2     lw 2 notitle, \
"Fe2Se2-FeSe.pdos_atm#2\(Fe2\)_wfc#3\(d\)" u 2:($1-fermi) with lines lc 4 lw 2 title"Fe (d)",\
"Fe2Se2-FeSe.pdos_atm#2\(Fe2\)_wfc#3\(d\)" u ($2*(-1)):($1-fermi) with lines lc 4     lw 2 notitle;

pause -1
