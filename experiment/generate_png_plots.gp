set terminal pngcairo size 600,400 enhanced font "Arial,12"
set output "plot1.png"
set title "Sine Wave"
plot sin(x) title "sin(x)" with lines

set terminal pngcairo size 600,400 enhanced font "Arial,12"
set output "plot2.png"
set title "Parabola"
plot x**2 title "x^2" with lines

set terminal pngcairo size 600,400 enhanced font "Arial,12"
set output "plot3.png"
set title "Exponential Function"
plot exp(x) title "exp(x)" with lines