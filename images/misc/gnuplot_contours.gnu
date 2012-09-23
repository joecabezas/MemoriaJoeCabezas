reset

set view 63, 24, 1, 1.5

set samples 50, 50
set isosamples 50, 50

set grid

set hidden3d

set contour base
set cntrparam bspline
set cntrparam levels auto 10

set xlabel "X"
set ylabel "Y"
set zlabel "Z"

set xlabel offset 0, -1, 0 norotate
set ylabel offset -4, -1, 0 norotate
set zlabel offset 4, 0, 0 norotate

set tics font ", 8"
set xtics offset 0.5,-0.5
set ytics offset -0.6,-0.5
set ztics offset 0.5,-0.5

unset key

#splot [-5:0.01] [2:5.01] sin(1.3*x)*cos(.9*y)+cos(.8*x)*sin(1.9*y)+cos(y*.2*x)
splot [-5:5.01] [-5:5.01] sin(sqrt(x**2+y**2)) / sqrt(x**2+y**2)

set term postscript eps enhanced color
set output "contour_1.eps"
replot

#GRAFICO EN 2D

set view map

set xlabel offset 0, 0, 0 norotate
set ylabel offset 0, 0, 0 norotate
set zlabel offset 0, 0, 0 norotate

set tics font ", 8"
set xtics offset 0,0
set ytics offset 0,0
set ztics offset 0,0

unset key
unset surface

set output "contour_2.eps"
replot