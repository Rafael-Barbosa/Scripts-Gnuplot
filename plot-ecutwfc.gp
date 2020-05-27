set grid
set format y "%6.3f"
set ylabel "Total energy (Ry)"
set xlabel "ecutwfc (Ry)"

plot 'ecutwfcXtotal_energy-4.dat' w linespoints lw 2 pt 4 ps 1.2 title "4x4x4", 'ecutwfcXtotal_energy-8.dat' w linespoints lw 2 pt 4 ps 1.2 title "8x8x8"
pause -1

