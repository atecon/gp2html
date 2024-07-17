#set terminal canvas name "plot3" mousing jsdir "http://gnuplot.sourceforge.net/demo/"
set terminal canvas name "plot3" mousing jsdir "/usr/local/share/gnuplot/5.4/js/"
set output "plot3.js"
set title "Exponential Function"
plot exp(x) title "exp(x)" with lines