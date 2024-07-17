#set terminal canvas name "plot2" mousing jsdir "http://gnuplot.sourceforge.net/demo/"
set terminal canvas name "plot2" mousing jsdir "/usr/local/share/gnuplot/5.4/js/"
set output "plot2.js"
set title "Parabola"
plot x**2 title "x^2" with lines