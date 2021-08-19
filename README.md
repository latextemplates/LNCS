# Simplified LNCS Template

> Quick start for modern LaTeXing with [LNCS](http://www.springer.com/computer/lncs).

This document was created using the [latex-template generator](https://www.npmjs.com/package/generator-latex-template).

Compile it using

    pdflatex main

## Benefits

Following features are enabled in this template:

- Provides a skeletal [paper.tex](paper.tex) file
- Example to have an image being placed right to a text
- (Optional) Automatic setting of "Fig." and "Section"/"Sect." according to the LNCS style.
  Just use `\Cref{sec:xy}` at the beginning of a sentence and `\cref{sec:xy}` in the middle of a sentence.
  Thanx to [cleveref].
- Sharper font (still compatible with Springer's requirements).
- (Optional) Typesetting of listings using advanced highlighting powered by the [minted] package.
- Generated PDF allows for copy and paste of text without getting words with ligatures such as "workflow" destroyed.
  This is enabled by `glyphtounicode`, which encodes ligatures (such as fl) using unicode characters.
- Support of hyperlinked references without extra color thanx to [hyperref].
- Better breaking of long URLs.
- Support for `\powerset` command.
- (Optional) Support todos as pdf annotations. This is enabled by the [pdfcomment] package.
- [microtypographic extensions](https://www.ctan.org/pkg/microtype) for a better look of the paper.
- Modern packages such as [microtype], [cleveref], [csquotes], [hyperref], [hypcap], [upquote], [natbib], [booktabs].
- Ready-to-go configuration for [latexindent].

## Examples

- [paper.pdf](https://latextemplates.github.io/LNCS/paper.pdf) - normal paper.
- [paper-minted.pdf](https://latextemplates.github.io/LNCS/paper-minted.pdf) - paper showing minted in action.
- [paper-newtx.pdf](http://latextemplates.github.io/LNCS/paper-newtx.pdf) - paper typeset in Times Roman to save some space.
- [paper-minted-newtx.pdf](http://latextemplates.github.io/LNCS/paper-minted-newtx.pdf) - paper typeset in Times Roman to save some space.

## Background

The official template is available at <https://www.springer.com/gp/computer-science/lncs/conference-proceedings-guidelines> --> "Templates, samples files & useful links" --> "LaTeX2e Proceedings Templates (zip)"
Deep link: <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip>.

> **The class file authored by Springer is needed to get the template working:**
> `llncs.cls`
>  You get it from inside the ZIP of `llncs2e.zip` available at <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip>.

Reason: Licensing restrictions of Springer do not allow distribution outside of springer.
See [message #47 for debian bug 31897](https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=31897#47) for details.
Therefore, the required file `llncs.cls` has to be downloaded in some way.
Follow the quick start instructions.

## Quick start

* Click on `Download ZIP` or [here](https://github.com/latextemplates/LNCS/archive/master.zip).
* Extract `LNCS-master.zip` in the folder where you want to write your paper.
* Place `llncs.cls` into the directory
  - Download `llncs2e.zip` from <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip> and extract it in the directory.
    On Linux, just execute `download-llncs-files-from-springer.sh`.
  - In case ftp does not work at your side, you can try online ftp services such as http://www.net2ftp.com/ to download the files.
    Open the connection to `ftp.springernature.com` and navigate to `cs-proceeding`, `llncs`, and download the ZIP archive.
* Edit [paper.tex](paper.tex).
* `latexmk paper`.

 As you see on GitHub actions, the paper compiles out of the box.
 There is no need to adjust the packages or to remove some of them.
 This might lead to undesiered results such as hyperlinks not working any more or no good microtypographic features.
 In case you think, a package needs to be altered or added, feel free to open an issue.

## Tool hints

There is currently no official biblatex support.
A first step towards that is done at [biblatex-lncs](https://github.com/mgttlinger/biblatex-lncs).

MiKTeX installation hints are given at <http://latextemplates.github.io/scientific-thesis-template/#installation-hints-for-windows>.

- Grammar and spell checking is available at [TeXstudio].
  Please download [LanguageTool] (Windows: `choco install languagetool`) and [configure TeXstudio to use it](http://wiki.languagetool.org/checking-la-tex-with-languagetool#toc4).
  Note that it is enough to point to `languagetool.jar`.
  **If TeXstudio doesn't fit your need, check [the list of all available LaTeX Editors](http://tex.stackexchange.com/questions/339/latex-editors-ides).**
- Use [JabRef] to manage your bibliography (Windows: `choco install jabref`).

To have minted running properly, you have to do following steps on Windows:

1. Install python: `choco install python` - that uses [chocolatey](https://chocolatey.org/) to install Python
2. Install [pygments]: `pip instal pygments` - that uses the Pyhton package manager to install the pygments library
3. When latexing, use `-shell-escape`: `pdflatex -shell-escape paper`.
   You can also just execute `latexmk paper`.

## FAQs

### Q: ShareLaTeX outputs a warning regarding the llncs class

ShareLaTeX might output following warning:

> LaTeX Warning: You have requested, on input line 8, version
> 2018/03/10' of document class llncs, but only version 2004/08/17 v2.14
> LaTeX document class for Lecture Notes in Computer Science'
> is available.

The reason is that you did not use `llncs.cls` from a recent llncs2e.zip (which can be downloaded from <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip>), but a copy from somewhere else.
Please use the latest version offered by Springer.

### Q: How can I synchronize updates from the template to my repository?

1. Initialize your git repository as usual
2. Add this repository as upstream: `git remote add upstream https://github.com/latextemplates/LNCS.git`
3. Merge the branch `upstream/main` into your `main` branch: `git merge upstream/main`.

After that you can use and push the `main` branch as usual.
Notes on syncing with the upstream repository [are available from GitHub](https://help.github.com/articles/syncing-a-fork/).

### Q: I get the error  `! pdfTeX error (font expansion): auto expansion is only possible with scalable fonts.`

Install the `cm-super` package using the MiKTeX package manager. Then, run `initexmf --mkmaps` on the command line. (Long description: <https://tex.stackexchange.com/a/324972/9075>)

### Q: I get `Package csquotes Error: Unbalanced groups or invalid nesting.` What can I do?

A: You have activated `\MakeOuterQuote{"}` and used some special babel command to allow hyphenation at other places as a dash. One example is writing `application"=specific`.
Now, you have to decide whether you want keep using plain quotes to enquote a word or use the special hyphenation command.
In other words: Do you want `"quote"` and `app\-lication\-specific` or `\enquote{quote} and  application"=specific`?

Note that this should not happen when the template is generated as the setting `tweak_outerquote` ensures that these two options are mutually exclusive.

### Q: I need more space. What can I do?

The most simple solution to get more space is to exchange the font.

### Q: How can I reformat my `.tex` files?

Execute following command:

    latexindent -l -s -sl -w paper.tex

### Q: I want to obey the one-sentence-per-line rule. How can I do that?

Execute following command:

    latexindent -m -l -s -sl -w paper.tex

Attention! This is work in progress and does not always produce best results.

### Q: Is it possible to have a footer indicating that the paper is intended to be submitted/submitted/published?

Activate the `llncsconf` package.
The possible options are listed in `paper.tex`.

### Q: Can I also write in German?

Yes. You can regenerate the template and choose "German" as language.

## Further information

- tex.stackexchange.com questions regarding LNCS: <https://tex.stackexchange.com/questions/tagged/lncs>
- Original LNCS demonstration (without the improvements): [llncs-dem.pdf](llncs-dem.pdf)
- Original LNCS documentation (without the improvements): [llncs-doc.pdf](llncs-doc.pdf)
- Other templates: <https://latextemplates.github.io/>

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

<!-- disable markdown-lint rules contradicting our writing of FAQs -->
<!-- markdownlint-disable-file MD001 MD013 MD026 -->
