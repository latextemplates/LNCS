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
- [Development](#development-)
- [Links](#links)

<!-- tocstop -->

## Features

* Support for German documents (without broken headers):
  Contains a fix to increase compatibility with Babel.
  See <https://tex.stackexchange.com/a/441701/9075> for details.
* Provides a skeletal [paper.tex](paper.tex) file.
* Generated PDF allows for copy and paste of text without getting words with ligatures such as "workflow" destroyed.
  This is enabled by `glyphtounicode`, which encodes ligatures (such as fl) using unicode characters.
* Automatic setting of "Fig." and "Section"/"Sect." according to the LNCS style.
  Just use `\Cref{sec:xy}` at the beginning of a sentence and `\cref{sec:xy}` in the middle of a sentence.
  Thanx to [cleveref].
* Support of hyperlinked references without extra color thanx to [hyperref].
* Better breaking of long URLs.
* Sharper font (still compatible with Springer's requirements).
* Support for `\powerset` command.
* Support todos as pdf annotations. This is enabled by the [pdfcomment] package.
* [microtypographic extensions](https://www.ctan.org/pkg/microtype) for a better look of the paper.
* Adds modern packages such as [microtype], [cleveref], [csquotes], [paralist], [hyperref], [hypcap], [upquote], [natbib], [booktabs], [cfr-lm].
* Optional: Support for [minted] package. Uncomment `\usepackage[newfloat]{minted}` to get started.
* Optional: Compile with `lualatex` instead of `pdflatex`.
* Ready-to-go configuration for [latexindent].

## Background

The official template is available at <https://www.springer.com/gp/computer-science/lncs/conference-proceedings-guidelines> --> "Templates, samples files & useful links" --> "LaTeX2e Proceedings Templates (zip)"
Deep link: <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip>.

> **The class file authored by Springer is needed to get the template working:**
> `llncs.cls`
>  You get it from inside the ZIP of `llncs2e.zip` available at <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip>.

Reason: Licensing restrictions of Springer do not allow distribution outside of springer.
See [message #47 for debian bug 31897](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=31897#47) for details.
Therefore, the required file `llncs.cls` has to be downloaded in some way.

## Using the template with your git repository

1. Initialize your git repository as usual
2. Add this repository as upstream: `git remote add upstream https://github.com/eloquenza/LNCS.git`
3. Fetch upstream changes: `git fetch upstream`
4. Merge the branch `upstream/master` into your `master` branch: `git merge upstream/master --allow-unrelated-histories --ff`.
5. Edit [paper.tex](paper.tex).
6. Compile the paper by `make`, `make compile` or `latexmk paper.tex`

After that you can use and push the `master` branch as usual.
Notes on syncing with the upstream repository [are available from GitHub](https://help.github.com/articles/syncing-a-fork/).

Note:
If by some change, ftp does not work on your side, you should try online ftp services such as https://www.net2ftp.com/ to download the needed llncs.cls file.

## Compiling the paper

Inside this repository is a Makefile which can be used to compile the paper by typing `make` into a shell.
Check [Makefile](Makefile) for more commands.

## Development

### Q: How to reindent the lines in my .tex files?:

```shell
latexindent -y="indentPreamble:1,defaultIndent:'  '" -m -w paper.tex`
```

OR

```shell
make indent
```

### Q: How can I reformat my .tex files?

Execute following command:

```shell
latexindent -l -s -sl -w paper.tex
```

OR

```shell
make format
```

### Q: I want to obey the one-sentence-per-line rule. How can I do that?

Execute following command:

```shell
latexindent -m -l -s -sl -w paper.tex
```

OR

```shell
make split-sentences
```

Attention! This is work in progress and does not always produce best results.

## FAQ

### Q: ShareLaTeX outputs a warning regarding the llncs class

ShareLaTeX might output following warning:

> LaTeX Warning: You have requested, on input line 8, version
> 2018/03/10' of document class llncs, but only version 2004/08/17 v2.14
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

```latex
\iftrue % use default-font
```

by

```latex
\iffalse
```

### Q: Is it possible to have a footer indicating that the paper is intended to be submitted/submitted/published?

Activate the `llncsconf` package.
The possible options are listed in `paper.tex`.

### Q: Can I also write in German?

Yes.

1. Pass parameter `ngerman` to the document class:

    ```latex
    \documentclass[english,runningheads,a4paper]{llncs}[2018/03/10]
    ```

1. Please search for `babel` in `paper.tex` and use

    ```latex
    \usepackage[english,ngerman]{babel}
    ```

    instead of

    ```latex
    \usepackage[ngerman,english]{babel}
    ```

If you like this work, please consider donating via [Liberapay](https://liberapay.com/koppor)!

## Links

* tex.stackexchange.com questions regarding LNCS: <https://tex.stackexchange.com/questions/tagged/lncs>
* German: Hinweise zu Ausarbeitungen: <http://wiki.flupp.de/studium/ausarbeitungen>
* Other templates: <https://latextemplates.github.io/>
* Original LNCS demonstration (without the improvements): [llncs-dem.pdf](llncs-dem.pdf)
* Original LNCS documentation (without the improvements): [llncs-doc.pdf](llncs-doc.pdf)

  [booktabs]: https://ctan.org/pkg/booktabs
  [cfr-lm]: https://www.ctan.org/pkg/cfr-lm
  [cleveref]: https://ctan.org/pkg/cleveref
  [csquotes]: https://www.ctan.org/pkg/csquotes
  [hypcap]: https://www.ctan.org/pkg/hypcap
  [hyperref]: https://ctan.org/pkg/hyperref
  [latexindent]: https://ctan.org/pkg/latexindent
  [microtype]: https://ctan.org/pkg/microtype
  [minted]: https://ctan.org/pkg/minted
  [natbib]: https://ctan.org/pkg/natbib
  [newtx]: https://ctan.org/pkg/newtx
  [paralist]: https://www.ctan.org/pkg/paralist
  [pdfcomment]: https://www.ctan.org/pkg/pdfcomment
  [upquote]: https://www.ctan.org/pkg/upquote

  [JabRef]: https://www.jabref.org
  [LanguageTool]: https://languagetool.org/
  [TeXstudio]: http://texstudio.sourceforge.net/
  [pygments]: http://pygments.org/

  [llncs2e.zip]: ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip
