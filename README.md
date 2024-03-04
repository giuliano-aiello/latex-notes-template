# LaTeX Template

## Description

A simple macOS LaTeX project template to start writing notes.\
This has been built in order to use a local TeX distribution and not online tools, so that one could manage his whole LaTeX project.\
The TeX configuration setup to develop the project was hostile and clearly required some studies.

## Installation

Built with MacTeX.

tex --version\
&emsp;TeX 3.141592653 (TeX Live 2023)
    kpathsea version 6.3.5
    Copyright 2023 D.E. Knuth.
    There is NO warranty.  Redistribution of this software is
    covered by the terms of both the TeX copyright and
    the Lesser GNU General Public License.
    For more information about these matters, see the file
    named COPYING and the TeX source.
    Primary author of TeX: D.E. Knuth.

pdflatex --version\
&emsp;pdfTeX 3.141592653-2.6-1.40.25 (TeX Live 2023)
    kpathsea version 6.3.5
    Copyright 2023 Han The Thanh (pdfTeX) et al.
    There is NO warranty.  Redistribution of this software is
    covered by the terms of both the pdfTeX copyright and
    the Lesser GNU General Public License.
    For more information about these matters, see the file
    named COPYING and the pdfTeX source.
    Primary author of pdfTeX: Han The Thanh (pdfTeX) et al.
    Compiled with libpng 1.6.39; using libpng 1.6.39
    Compiled with zlib 1.2.13; using zlib 1.2.13
    Compiled with xpdf version 4.04

biber --version\
&emsp;biber version: 2.19

## Usage

Ensure the following project structure is in place.
```bash
.
|-- bibliography.bib
|-- chapter
|   |-- chapter1
|    |    |-- prolusion.tex
|-- figure
|    |-- UniNa_logo.svg
|-- main.tex
|-- mypackage.sty
|-- README.md
|-- render.sh
```

Please specify the location of your Inkscape installation in the `\InkscapePath` command.

Run `render.sh main.tex`. Open your `main.pdf` file.\
The script that was just executed performs the following steps:

### Svg

`--shell-escape` must be set as first option when compiling.

### Bibliography

Typeset `main.tex` (`pdflatex --shell-escape --file-line-error --synctex=1`).\
Run `biber main` (no extension must be provided).\
Typeset `main.tex` again twice.

### Glossaries
Typeset `main.tex` (`pdflatex --shell-escape --file-line-error --synctex=1`).\
Run `makeglossaries main` (no extension must be provided).\
Typeset `main.tex` again twice.

## License

MIT License

Copyright (c) 2024 Giuliano Aiello

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Credits

Authored by [me](https://github.com/FueledBy-Pizza).
