Dieser Branch enthält Anpassungen für Seminararbeiten am IPVS.
Nähere Informationen unter http://www.ipvs.uni-stuttgart.de/abteilungen/as/lehre/lehrveranstaltungen/seminare/richtlinien/#ausarbeitung.

# Simplified LNCS Template

This repository aims to provide a quick start into modern LaTeXing with LNCS.
This template is based on the one available at http://www.springer.com/computer/lncs?SGWID=0-164-6-793341-0

## Quick start

 * Click on `Download ZIP` or [here](https://github.com/latextemplates/LNCS/archive/template.zip)
 * Extract template.zip in the folder where you want to write your paper
 * Edit [paper.tex](paper.tex).
 * To build use `latexmk -pdf paper.tex`
 * To clean up after a build use latexmk -c (in case of *.aux-file errors) 

## Changing the papers language to english instead of german (all changes in [paper.tex](paper.tex)):

 * In case you've already generated the paper.pdf file using `latexmk -pdf paper.tex`, delete the paper.aux file.
 * Comment out line 4:           `\usepackage[ngerman]{babel}` -> `%\usepackage[ngerman]{babel}`
 * Remove the `%` from line 6:   `%\usepackage[american]{babel}` -> `\usepackage[american]{babel}`
 * Comment line 77 `\usepackage[capitalise,nameinlink,ngerman]{cleveref}` -> `%\usepackage[capitalise,nameinlink,ngerman]{cleveref}`
 * Remove the `%` from line 78 `%\usepackage[capitalise,nameinlink,english]{cleveref}` -> `\usepackage[capitalise,nameinlink,english]{cleveref}`

## Changes in comparison to Springer's version

* Removal of all files except llncs.cls and splncs03.bst
* Adding a skeletton [paper.tex](paper.tex) file
* Adding modern packages such as [microtype], [cleveref], [csquotes], [paralist], [hyperref], [hypcap], [cfr-lm]
* Support of copy and paste from the generated PDF: Glyphs are encoded using unicode characters.
* Support for `\powerset` command
* Allow copy and paste of text without getting words with ligatures such as "workflow" destroyed

## Using with your git repository

### Initialization
This howto assumes that you don't have a git repository for your paper yet.
If you have, just add https://github.com/latextemplates/LNCS.git as upstream and merge the branch "lncs_as" into your "master" branch.

1. Open command line
1. `git clone https://github.com/latextemplates/LNCS.git`
1. `cd LNCS`
1. `git remote rename origin github`
1. `git checkout lncs_as`
1. `git checkout -b master`

After that you can use and push the master branch as usual.

  [cfr-lm]: https://www.ctan.org/pkg/cfr-lm
  [cleveref]: https://ctan.org/pkg/cleveref
  [csquotes]: https://www.ctan.org/pkg/csquotes
  [hypcap]: https://www.ctan.org/pkg/hypcap
  [hyperref]: https://ctan.org/pkg/hyperref
  [microtype]: https://ctan.org/pkg/microtype
  [paralist]: https://www.ctan.org/pkg/paralist
