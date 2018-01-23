# Simplified LNCS Template [![Build Status](https://circleci.com/gh/latextemplates/LNCS/tree/master.svg?style=shield)](https://circleci.com/gh/latextemplates/LNCS/)

> Quick start for modern LaTeXing with [LNCS](http://www.springer.com/computer/lncs).

## TOC

<!-- toc -->

- [Features](#features)
- [Background](#background)
- [Quick start](#quick-start)
- [Tool hints](#tool-hints)
- [Using the template with your git repository](#using-the-template-with-your-git-repository)
- [FAQ](#faq)
  * [Q: ShareLaTeX outputs a warning regarding the llncs class](#q-sharelatex-outputs-a-warning-regarding-the-llncs-class)
  * [Q: I get the error `! pdfTeX error (font expansion): auto expansion is only possible with scalable fonts.`](#q-i-get-the-error---pdftex-error-font-expansion-auto-expansion-is-only-possible-with-scalable-fonts)
  * [Q: I need more space. What can I do?](#q-i-need-more-space-what-can-i-do)
  * [Q: How can I reformat my .tex files?](#q-how-can-i-reformat-my-tex-files)
  * [Q: How I want to obey the one-sentence-per-line rule.](#q-how-i-want-to-obey-the-one-sentence-per-line-rule)
- [Development](#development)
- [Links](#links)

<!-- tocstop -->

## Features

 * Provides a skeletal [paper.tex](paper.tex) file.
 * Generated PDF allows for copy and paste of text without getting words with ligatures such as "workflow" destroyed.
   This is enabled by the [cmap] package, which encodes ligatures (such as fl) using unicode characters.
 * Automatic setting of "Fig." and "Section"/"Sect." according to the LNCS style.
   Just use `\Cref{sec:xy}` at the beginning of a sentence and `\cref{sec:xy}` in the middle of a sentence.
   Thanx to [cleveref].
 * Support of hyperlinked references without extra color thanx to [hyperref].
 * Better breaking of long URLs.
 * Sharper font (still compatible with Springer's requirements).
 * Support for `\powerset` command.
 * Support todos as pdf annotations. This is enabled by the [pdfcomment] package.
 * [microtypographic extensions](https://www.ctan.org/pkg/microtype) for a better look of the paper.
 * Adds modern packages such as [microtype], [cleveref], [csquotes], [paralist], [hyperref], [hypcap], [upquote], [cfr-lm].
 * Optional: Support for [minted] package. Uncomment `\usepackage[newfloat]{minted}` to get started.
 * Ready-to-go configuration for [latexindent].

Examples:

- [paper.pdf](https://latextemplates.github.io/LNCS/paper.pdf) - normal paper.
- [paper-minted.pdf](https://latextemplates.github.io/LNCS/paper-minted.pdf) - paper showing minted in action.
- [paper-newtx.pdf](http://latextemplates.github.io/LNCS/paper-newtx.pdf) - paper typeset in Times Roman to save some space.

## Background

The official template is available at <http://www.springer.com/computer/lncs?SGWID=0-164-6-793341-0>.
Deep link: <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip>.
The files are also provided at Springer's FTP server at ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/.

> **Two files of Springer are needed to get the template working:**
> `llncs.cls` and `splncs03.bst`
>  You get them from ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/llncs.cls and ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/splncs03.bst or
> inside the ZIP of `llncs2e.zip` available at <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip>.

Reason: Licensing restrictions of Springer do not allow distribution outside of springer.
See [message #47 for debian bug 31897](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=31897#47) for details.
Therefore, the required files `llncs.cls` and `splncs03.bst` have to be downloaded in some way.
Follow the quick start instructions.

## Quick start

 * Click on `Download ZIP` or [here](https://github.com/latextemplates/LNCS/archive/master.zip).
 * Extract `master.zip` in the folder where you want to write your paper.
 * Place `llncs.cls` and `splncs03.bst` into the directory
   - Download `llncs2e.zip` from <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip> and extract it in the directory.
     On Linux, just execute `download-llncs-files-from-springer.sh`.
   - In case ftp does not work at your side, you can try online ftp services such as http://www.net2ftp.com/ to download the files. Open the connection to `ftp.springer.de` and navigate to `pub`, `text`, `latex`, `llncs`, `latex2e`, and download the two files.
 * Edit [paper.tex](paper.tex).
 * `latexmk paper`.

## Tool hints

There is currently no official biblatex support.
A first step towards that is done at [biblatex-lncs](https://github.com/neapel/biblatex-lncs/).

MiKTeX installation hints are given at <https://github.com/latextemplates/scientific-thesis-template/blob/template/README.md#installation-hints-for-windows>.

- Grammar and spell checking is available at [TeXstudio].
  Please download [LanguageTool] (Windows: `choco install languagetool`) and [configure TeXstudio to use it](http://wiki.languagetool.org/checking-la-tex-with-languagetool#toc4).
  Note that it is enough to point to `languagetool.jar`.
  **If TeXstudio doesn't fit your need, check [the list of all available LaTeX Editors](http://tex.stackexchange.com/questions/339/latex-editors-ides).**
- Use [JabRef] to manage your bibliography (Windows: `choco install jabref`).


In case you want to get started using minted, do following steps:

1. Install python: `choco install python` - that uses [chocolatey](https://chocolatey.org/) to install Python
2. Install [pygments]: `pip instal pygments` - that uses the Pyhton package manager to install the pygments library
3. When latexing, use `-shell-escape`: `pdflatex -shell-escape paper`.
   You can also just execute `latexmk paper`.

## Using the template with your git repository

1. Initialize your git repository as usual
2. Add this repository as upstream: `git remote add upstream https://github.com/latextemplates/LNCS.git`
3. Merge the branch `upstream/master` into your `master` branch: `git merge upstream/master`.

After that you can use and push the `master` branch as usual.
Notes on syncing with the upstream repository [are available from GitHub](https://help.github.com/articles/syncing-a-fork/).

## FAQ

### Q: ShareLaTeX outputs a warning regarding the llncs class

ShareLaTeX might output following warning:

> LaTeX Warning: You have requested, on input line 8, version
> 2015/06/24' of document class llncs, but only version 2004/08/17 v2.14
> LaTeX document class for Lecture Notes in Computer Science'
> is available.

The reason is that you did not use `llncs.cls` from a recent llncs2e.zip (which can be downloaded from <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip>), but a copy from somewhere else.
Please use the latest version offered by Springer.

### Q: I get the error  `! pdfTeX error (font expansion): auto expansion is only possible with scalable fonts.`

Install the `cm-super` package using the MiKTeX package manager. Then, run `initexmf --mkmaps` on the command line. (Long description: http://tex.stackexchange.com/a/324972/9075)

### Q: I need more space. What can I do?

The most simple solution to get more space is to exchange the font.
You can disable the [cfr-lm] package by the [newtx] package's `newtxtext` and `newtxmath`.
This effectively switches the font from Computer Modern to Times Roman.

This switch is prepared in the template.
Exchange

    \iftrue % use default-font

by

    \iffalse


### Q: How can I reformat my .tex files?

Execute `latexindent -l -s -sl -w paper.tex`


### Q: How I want to obey the one-sentence-per-line rule.

Execute `latexindent -m -l -s -sl -w main-english.tex`.
Attention! This is work in progress and does not always produce best results.


## Development

- Reindent: `latexindent -y="indentPreamble:1,defaultIndent:'  '" -m -w paper.tex`

## Links

 * German: Hinweise zu Ausarbeitungen: http://wiki.flupp.de/studium/ausarbeitungen
 * Other templates: http://latextemplates.github.io/

  [cfr-lm]: https://www.ctan.org/pkg/cfr-lm
  [cleveref]: https://ctan.org/pkg/cleveref
  [cmap]: https://www.ctan.org/pkg/cmap
  [csquotes]: https://www.ctan.org/pkg/csquotes
  [hypcap]: https://www.ctan.org/pkg/hypcap
  [hyperref]: https://ctan.org/pkg/hyperref
  [latexindent]: https://ctan.org/pkg/latexindent
  [microtype]: https://ctan.org/pkg/microtype
  [minted]: https://ctan.org/pkg/minted
  [newtx]: https://ctan.org/pkg/newtx
  [paralist]: https://www.ctan.org/pkg/paralist
  [pdfcomment]: https://www.ctan.org/pkg/pdfcomment
  [upquote]: https://www.ctan.org/pkg/upquote

  [JabRef]: https://www.jabref.org
  [LanguageTool]: https://languagetool.org/
  [TeXstudio]: http://texstudio.sourceforge.net/
  [pygments]: http://pygments.org/

  [llncs2e.zip]: ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip
