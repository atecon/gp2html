# gp2html Gretl Package

The `gp2html` package provides a simple yet powerful way to generate HTML files that embed SVG plots, making it easier to share and view graphical representations of data analysis results. This package is particularly useful for users looking to present their Gretl-generated plots in a web-friendly format.

Please report any issues or suggestions on the Gretl mailing list or GitHub page: https://github.com/atecon/gp2html .

## Installation

To install the `gp2html` package, use the Gretl package manager or the following command:

```hansl
pkg install gp2html
```

## Pre-requisites
You need a working gnuplot installation to generate the SVG files first. In order to add interactivity to the plots on the html-website, you


# Public Functions

The primary function exposed by this package is `gp2html`, which generates an HTML file containing embedded SVG plots.

### Syntax

```gretl
gp2html(filenames, output_file, opts[null])
```

*Parameters:*

- `filenames`: *string array*, The names of the SVG files to embed in the HTML file.
- `output_file`: *string*, The name of the output HTML file. Must have an `.html` extension.
- `opts`: *bundle*, A bundle of options to customize the appearance of the HTML file.


The `opts` bundle can contain the following options:

- `global_title`: *string*, The title of the HTML file. Default is "Overview of plots".
- `margin_bottom`: *scalar*, The bottom margin in pixels. Default is `20`.
- `note`: *string*, Add a note to the HTML file at the top below the title. Per default no note is shown.
- `show_howto`: *bool*, Whether to show the "How to use" section. Default is `TRUE`.
- `single_column`: *bool*, Whether to display the plots in a single columns. Default is `FALSE`.
- `titles`: *string array*, The titles of the plots. If present, the number of titles must match the number of SVG files.


# Change Log

- v0.1 (July 2024): Initial release.
