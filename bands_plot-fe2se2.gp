#set terminal postscript eps color enhanced font "Helvetica, 20"
#set output "Graphene_bands.ps"
set tics font "Helvetica,15"
ymin=-7
ymax=2
xmin=0.0
xmax=1.7071
fermi=-0.8045
set border linewidth 2.0
set style arrow 2 nohead lw 1
set style arrow 1 nohead ls 5 lc rgb "blue" lw 1.5
set arrow arrowstyle 2 from 0.7071,ymin to 0.7071,ymax as 1
set arrow arrowstyle 2 from 1.2071,ymin to 1.2071,ymax as 1
set arrow arrowstyle 2 from 0,0  to xmax,0 as 1
set ylabel "Energy (eV)" font ",15"  
set xtics ("M" 0, "{/Symbol G}"  0.7071, "X" 1.2071, "M" 1.7071)
plot [xmin:xmax][ymin:ymax] "Fe2Se2-FeSe.band_up.gnu" u 1:($2-fermi) with lines lc 8 lw 2  title "Spin Up", "Fe2Se2-FeSe.band_dw.gnu" u 1:($2-fermi) with points lc 4 pt 7 title "Spin Down"
pause -1
