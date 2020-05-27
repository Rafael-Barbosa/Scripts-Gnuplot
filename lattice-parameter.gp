#set term png
#set output "lattice-parameter.png"
set grid
set format y "%6.3f"
set title "Si.pz-vbc.UPF"
set ylabel "Total energy (Ry)"
set xlabel "Lattice Parameter (Bohr)"

plot 'parameter.dat' w linespoints lw 2 pt 4 ps 1.2 notitle 
pause -1

