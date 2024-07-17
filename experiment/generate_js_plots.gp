set terminal canvas name "plot1" mousing jsdir "./"
set output "plot1.js"
set title "Sine Wave"
plot sin(x) title "sin(x)" with lines

set terminal canvas name "plot2" mousing jsdir "./"
set output "plot2.js"
set title "Parabola"
plot x**2 title "x^2" with lines

set terminal canvas rounded name "plot3" enhanced fsize 10 lw 1.6 fontscale 1 name "simple_1" jsdir "./"
set output "plot3.js"
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
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
plot [-10:10] sin(x),atan(x),cos(atan(x))