set grid
set format y "%6.3f"
set ylabel "Total energy (Ry)"
set xlabel "KxKxK points"

plot 'nkptsXtotal_energy-30.dat' w linespoints lw 2 pt 4 ps 1.2 title "30 Ry", 'nkptsXtotal_energy-40.dat' w linespoints lw 2 pt 4 ps 1.2 title "40 Ry";
pause -1

