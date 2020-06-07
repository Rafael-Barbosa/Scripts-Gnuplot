set encoding iso_8859_1
set multiplot
set format y "%6.3f"
set title "C.pbe-n-kjpaw.1.0.0.UPF -- Without vdW"
set ylabel "Total energy (Ry)"
set xlabel "layer distance ({\305})"

plot 'parameter.dat' w linespoints lw 2 lt rgb "black" pt 4 ps 1.2 notitle 

set rmargin at screen 0.90
set lmargin at screen 0.50
set bmargin at screen 0.40
set tmargin at screen 0.80

set notitle
set xrange[4:5]
unset ylabel
unset xlabel
plot 'parameter-4-5.dat' w lp lw 2 lt rgb "red" pt 4 ps 1.2 notitle

pause -1
