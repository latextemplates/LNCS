# Simplified LNCS Template

This repository aims to provide a quick start into modern LaTeXing with LNCS.
This template is based on the one available at http://www.springer.com/computer/lncs?SGWID=0-164-6-793341-0

## Usage

* `pdflatex paper.tex`
* `bibtex paper.tex`
* `pdflatex paper.tex`
* `pdflatex paper.tex`

## Changes in comparison to Springer's version

* Removal of all files excpet llncs.cls and splncs03.bst
* Adding a skeletton [paper.tex](paper.tex) file
* Adding modern packages such as `microtype` and `hyperref`
* Support of copy and paste from the generated PDF: Glyphs are encoded using unicode characters.

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
