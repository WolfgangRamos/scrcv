# SCRCV

A LaTeX cv class.

## License

These files may be distributed and/or modified under the conditions of the LaTeX Project Public License, either version 1.3 of this license or (at your option) any later version. The latest version of this license is in:

[http://www.latex-project.org/lppl.txt](http://www.latex-project.org/lppl.txt)

and version 1.3 or later is part of all distributions of LaTeX version 2005/12/01 or later.

## Installation

Put `scrcv.cls` in your TeX search path. Ideally you should use the directory the environment variable `TEXMFHOME` points to (use `echo ${TEXMFHOME}` to show that directory). You can put the files in a subdirectory if you like. I suggeset something like `${TEXMFHOME}/tex/latex/commonstuff/scrcv`. Caution: If you use a different directory of the TeX search path you might need to run `mktexlsr` (possibly as superuser) to make your TeX distribution find the new files.

## Usage

See example `test/cv.tex`. Here is a preview:

![Example](./example.jpg)
