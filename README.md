# Simplified LNCS Template

This repository aims to provide a quick start for modern LaTeXing with [LNCS](http://www.springer.com/computer/lncs).

The official template is available at http://www.springer.com/computer/lncs?SGWID=0-164-6-793341-0.
The files are also provided at Springer's FTP server at ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/.

Licensing restrictions of Springer do not allow distribution outside of springer.
See [message #47 for debian bug 31897](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=31897#47) for details.
Therefore, the required files [llncs.cls] and [splncs03.bst] have to be downloaded in some way.
Follow the quick start instructions.

## Quick start

 * Click on `Download ZIP` or [here](https://github.com/latextemplates/LNCS/archive/template.zip).
 * Extract template.zip in the folder where you want to write your paper.
 * Execute `gradlew init` or download [llncs.cls] and [splncs03.bst] by hand and store them in the target directory.
 * Edit [paper.tex](paper.tex).
 * `latexmk -pdf paper.tex`.

## Benefits in comparison to Springer's version

* Provides a skeletton [paper.tex](paper.tex) file
* Adds modern packages such as [microtype], [cleveref], [csquotes], [paralist], [hyperref], [hypcap], [cfr-lm]
* Support of copy and paste from the generated PDF: Glyphs are encoded using unicode characters.
* Support for `\powerset` command
* Generated PDF allows for copy and paste of text without getting words with ligatures such as "workflow" destroyed

## Using with your git repository

### Initialization
This howto assumes that you don't have a git repository for your paper yet.
If you have, just add https://github.com/latextemplates/LNCS.git as upstream and merge the branch "template" into your "master" branch.

1. Open command line
1. git clone https://github.com/latextemplates/LNCS.git
1. cd LNCS
1. git remote rename origin github
1. git checkout -b master

After that you can use and push the master branch as usual.

  [cfr-lm]: https://www.ctan.org/pkg/cfr-lm
  [cleveref]: https://ctan.org/pkg/cleveref
  [csquotes]: https://www.ctan.org/pkg/csquotes
  [hypcap]: https://www.ctan.org/pkg/hypcap
  [hyperref]: https://ctan.org/pkg/hyperref
  [microtype]: https://ctan.org/pkg/microtype
  [paralist]: https://www.ctan.org/pkg/paralist

  [llncs.cls]: ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/llncs.cls
  [splncs03.bst]: ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/splncs03.bst
