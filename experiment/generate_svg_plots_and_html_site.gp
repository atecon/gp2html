# Set up the HTML output
set print "plots.html"

# Start writing the HTML file
print "<!DOCTYPE html>"
print "<html lang='en'>"
print "<head>"
print "    <meta charset='UTF-8'>"
print "    <meta name='viewport' content='width=device-width, initial-scale=1.0'>"
print "    <title>Gnuplot SVG Plots</title>"
print "    <style>"
print "        .plot-container { margin-bottom: 20px; }"
print "        svg { max-width: 100%; height: auto; }"
print "    </style>"
print "</head>"
print "<body>"
print "    <h1>Gnuplot SVG Plots</h1>"

# Function to create a plot and embed it in HTML
create_plot(title, func) = sprintf("    <div class='plot-container'>\n        <h2>%s</h2>\n", title) . \
                           "        <svg width='600' height='400' xmlns='http://www.w3.org/2000/svg'>\n" . \
                           sprintf("        <rect width='600' height='400' fill='white'/>\n") . \
                           sprintf("        <g transform='translate(50,350)'>\n") . \
                           sprintf("            <g transform='scale(1,-1)'>\n") . \
                           GPVAL_SVG_PLOT . \
                           sprintf("            </g>\n        </g>\n    </svg>\n    </div>\n")

# Plot 1: Sine Wave
set terminal svg size 600,400 font "Arial,12"
set output "/dev/null"
set title "Sine Wave"
plot [-pi:pi] sin(x) title "sin(x)" with lines
print create_plot("Plot 1: Sine Wave", "sin(x)")

# Plot 2: Parabola
set terminal svg size 600,400 font "Arial,12"
set output "/dev/null"
set title "Parabola"
plot [-3:3] x**2 title "x^2" with lines
print create_plot("Plot 2: Parabola", "x^2")

# Plot 3: Exponential Function
set terminal svg size 600,400 font "Arial,12"
set output "/dev/null"
set title "Exponential Function"
plot [-2:2] exp(x) title "exp(x)" with lines
print create_plot("Plot 3: Exponential Function", "exp(x)")

# Close the HTML file
print "</body>"
print "</html>"
