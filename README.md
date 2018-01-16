# Simplified LNCS Template

This repository aims to provide a quick start for modern LaTeXing with [LNCS](http://www.springer.com/computer/lncs).
In addition to the official template, it offers following features:

 * clean copy and paste of ligatures (e.g., "workflow" stays "workflow" after copying from the PDF).
 * automatic setting of "Fig." and "Section"/"Sect." according to the LNCS style. Just use `\Cref{sec:xy}` at the beginning of a sentence and `\cref{sec:xy}` in the middle of a sentence. Thanx to [cleveref](https://www.ctan.org/pkg/cleveref).
 * [microtypographic extensions](https://www.ctan.org/pkg/microtype) for a better look of the paper.
 * support of `\powerset`.
 * support of hyperlinked references without extra color thanx to [hyperref](https://www.ctan.org/pkg/hyperref).
 * better breaking of URLs.
 * sharper font.

The official template is available at http://www.springer.com/computer/lncs?SGWID=0-164-6-793341-0.
The files are also provided at Springer's FTP server at ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/.

**Two files of Springer are needed to get the template working:** ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/llncs.cls and ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/splncs03.bst.
Reason: Licensing restrictions of Springer do not allow distribution outside of springer.
See [message #47 for debian bug 31897](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=31897#47) for details.
Therefore, the required files [llncs.cls] and [splncs03.bst] have to be downloaded in some way.
Follow the quick start instructions.

## Quick start

 * Click on `Download ZIP` or [here](https://github.com/latextemplates/LNCS/archive/template.zip).
 * Extract template.zip in the folder where you want to write your paper.
 * Place [llncs.cls] and [splncs03.bst] into the directory
   - Download them manually from ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/llncs.cls and ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/splncs03.bst.
   - On Linux, execute `download-llncs-files-from-springer.sh`.
   - Alternatively, ensure that `JAVA_HOME` is correctly set. This is ensured by using `choco install jdk8`, whereby `choco` is offered by [chocolatey](https://chocolatey.org/).
     Execute `gradlew init`.
   - In case ftp does not work at your side, you can try online ftp services such as http://www.net2ftp.com/ to download the files. Open the connection to `ftp.springer.de` and navigate to `pub`, `text`, `latex`, `llncs`, `latex2e`, and download the two files.
 * Edit [paper.tex](paper.tex).
 * `latexmk paper`.

## Benefits in comparison to Springer's version

* Provides a skeletal [paper.tex](paper.tex) file
* Adds modern packages such as [microtype], [cleveref], [csquotes], [paralist], [hyperref], [hypcap], [cfr-lm]
* Support of copy and paste from the generated PDF: Glyphs are encoded using unicode characters. This is enabled by the [cmap] package.
* Support todos as pdf annotations. This is enabled by the [pdfcomment] package.
* Support for `\powerset` command
* Generated PDF allows for copy and paste of text without getting words with ligatures such as "workflow" destroyed

## Tool hints

There is currently no official biblatex support.
A first step towards that is done at [biblatex-lncs](https://github.com/neapel/biblatex-lncs/).

MiKTeX installation hints are given at <https://github.com/latextemplates/scientific-thesis-template/blob/template/README.md#installation-hints-for-windows>.

Grammar and spell checking is available at [TeXstudio].
Please download [LanguageTool] and [configure TeXstudio to use it](http://wiki.languagetool.org/checking-la-tex-with-languagetool#toc4).
Note that it is enough to point to `languagetool.jar`.
Use [JabRef] to manage your bibliography.

If TeXstudio doesn't fit your need, check [the list of all available LaTeX Editors](http://tex.stackexchange.com/questions/339/latex-editors-ides).

## Using the template with your git repository

### Initialization

This howto assumes that you don't have a git repository for your paper yet.
If you have, just add https://github.com/latextemplates/LNCS.git as upstream and merge the branch `template` into your `master` branch.

1. Open command line
1. `git clone https://github.com/latextemplates/LNCS.git`
1. `cd LNCS`
1. `git remote rename origin upstream`
1. `git checkout -b master`

After that you can use and push the `master` branch as usual.
Notes on syncing with the upstream repository [are available from GitHub](https://help.github.com/articles/syncing-a-fork/).
Note that we decided to call the upstream branch `template` to have a clear distinction between the real content (maintained in your `master` branch) and the template (maintained in the `template` branch).

## Warnings on ShareLaTeX

ShareLaTeX might output following warning:

> LaTeX Warning: You have requested, on input line 8, version
> 2015/06/24' of document class llncs, but only version2004/08/17 v2.14
> LaTeX document class for Lecture Notes in Computer Science'
> is available.

The reason is that you did not download `llncs.cls` from <ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/>, but you did get if from somewhere else.
Please use the latest version offered by Springer.

## Development

- Do not update gradle to a higher version: Starting from 2.14 you will get the output "Unable to get progress logger. Download progress will not be displayed."
- Do not update de.undercouch.download to a version higher than 2.1.0. FTP downloads are not supported in higher versions. See <https://github.com/michel-kraemer/gradle-download-task/issues/60>.

## Links

 * German: Hinweise zu Ausarbeitungen: http://wiki.flupp.de/studium/ausarbeitungen
 * Other templates: http://latextemplates.github.io/

  [cfr-lm]: https://www.ctan.org/pkg/cfr-lm
  [cleveref]: https://ctan.org/pkg/cleveref
  [cmap]: https://www.ctan.org/pkg/cmap
  [csquotes]: https://www.ctan.org/pkg/csquotes
  [hypcap]: https://www.ctan.org/pkg/hypcap
  [hyperref]: https://ctan.org/pkg/hyperref
  [microtype]: https://ctan.org/pkg/microtype
  [paralist]: https://www.ctan.org/pkg/paralist
  [pdfcomment]: https://www.ctan.org/pkg/pdfcomment

  [JabRef]: https://www.jabref.org
  [LanguageTool]: https://languagetool.org/
  [TeXstudio]: http://texstudio.sourceforge.net/

  [llncs.cls]: ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/llncs.cls
  [splncs03.bst]: ftp://ftp.springer.de/pub/tex/latex/llncs/latex2e/splncs03.bst
