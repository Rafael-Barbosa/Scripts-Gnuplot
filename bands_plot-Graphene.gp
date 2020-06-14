#set terminal postscript eps color enhanced font "Helvetica, 20"
#set output "Graphene_bands.ps"
set tics font "Helvetica,15"
ymin=-15
ymax=15
xmin=0.0
xmax=1.5774
fermi=-0.4357

set border linewidth 2.0
set style arrow 2 nohead lw 1
set style arrow 1 nohead ls 5 lc rgb "blue" lw 1.5
set arrow arrowstyle 2 from 0.6667,ymin to 0.6667,ymax as 1
set arrow arrowstyle 2 from 1,ymin to 1,ymax as 1
set ylabel "Energy (eV)"
set xtics ("{/Symbol G}" 0, "K" 0.6667, "M" 1, "{/Symbol G}" 1.5774)
plot [xmin:xmax][ymin:ymax] "gr.band.gnu" u 1:($2-fermi) with lines lc 8 lw 2 notitle
pause -1
