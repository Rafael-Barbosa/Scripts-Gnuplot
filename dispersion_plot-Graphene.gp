#set terminal postscript eps color enhanced font "Helvetica, 20"
#set output "Graphene_phonos.ps"
set tics font "Helvetica,15"
ymin=0
ymax=1800
xmin=0.0
xmax=1.5774
set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 0.5

set border linewidth 2.0
set style arrow 1 nohead ls 5 lc rgb "blue" lw 1.5
set arrow arrowstyle 1 from 0.5774,ymin to 0.5774,ymax as 1
set arrow arrowstyle 1 from 0.9107,ymin to 0.9107,ymax as 1
set ylabel "Frequency cm-1"
set xtics ("{/Symbol G}" 0, "M" 0.5774, "K" 0.9107, "{/Symbol G}" 1.5774)
plot [xmin:xmax][ymin:ymax] "graphene_freq.plot" u 1:2  w lp ls 1 notitle;
pause -1
