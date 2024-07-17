#set terminal canvas name "plot1" mousing jsdir "http://gnuplot.sourceforge.net/demo/"
set terminal canvas name "plot1" mousing jsdir "/usr/local/share/gnuplot/5.4/js/"
set output "plot1.js"
set title "Sine Wave"
plot sin(x) title "sin(x)" with lines