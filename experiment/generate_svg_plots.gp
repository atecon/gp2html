set terminal svg size 600,400 enhanced font 'arial,10' mousing name "simple_1" butt dashlength 1.0 jsdir "."
set output 'plot0.svg'
set key fixed left top vertical Right noreverse enhanced autotitle box lt black linewidth 1.000 dashtype solid
set samples 50, 50
set title "Simple Plots"
set title  font ",20" textcolor lt -1 norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front noinvert bdefault#!/usr/local/bin/gnuplot -persist
NO_ANIMATION = 1
plot [-10:10] sin(x),atan(x),cos(atan(x))

set terminal svg size 600,400 font "Arial,12" mouse jsdir "."
set output "plot1.svg"
set title "Sine Wave with mouse only"
plot sin(x) title "sin(x)" with lines

set terminal svg size 600,400 font "Arial,12" enhanced mouse jsdir "."
set output "plot2.svg"
set title "Parabola with enhanced mouse"
set grid
plot x**2 title "x^2" with lines

set terminal svg size 600,400 font "Arial,12" enhanced mousing jsdir "."
set output "plot3.svg"
set title "Exponential Function"
plot exp(x) title "exp(x)" with lines

set terminal svg size 600,400 enhanced font 'arial,10' mousing name "simple_5" butt dashlength 1.0 jsdir "."
set output 'plot4.svg'
set key fixed left top vertical Right noreverse enhanced autotitle box lt black linewidth 1.000 dashtype solid
set samples 400, 400
set title "Simple Plots"
set title  font ",20" textcolor lt -1 norotate
set xrange [ * : * ] noreverse writeback
set x2range [ * : * ] noreverse writeback
set yrange [ * : * ] noreverse writeback
set y2range [ * : * ] noreverse writeback
set zrange [ * : * ] noreverse writeback
set cbrange [ * : * ] noreverse writeback
set rrange [ * : * ] noreverse writeback
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
NO_ANIMATION = 0
plot [-10:10] real(sin(x)**besj0(x))

