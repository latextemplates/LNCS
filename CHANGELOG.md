# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/).
From 2021-08-17 on versioning is done using [Calendar Versioning](https://calver.org/).

## [Unreleased]

### Changed

- Now generated using the [latex template generator](https://www.npmjs.com/package/generator-latex-template).

### Added

- Enable deletion of `*.bbl` when calling `latexmk -c`
- Add explicit `LICENSE`: [0BSD](https://opensource.org/licenses/0BSD)

## [1.9.1] – 2019-02-04

### Fixed

- Fixed compatibility with recent babel versions: using `main=english` as package parameter.

## [1.9.0] – 2018-07-18

### Added

- Added explanation how to use this class for German papers.
- Added a fix for using the babel package.
  See <https://tex.stackexchange.com/q/441670/9075> for details.

### Changed

- Minimum required `llncs.cls` file: 2018/03/10.

## [1.8.0] – 2018-05-09

### Added

- Added [stfloats](https://ctan.org/pkg/stfloats) package to enable footnotes appearing after floats.
- Added option `babel` to microtype package to ensure that documents written in a language other than English also work.
- Added package [siunitx](https://ctan.org/pkg/siunitx) incluing an example.

### Changed

- Refined `README.md`.

### Fixed

- Numbers can be copied. Enabled by switching from [cmap](https://www.ctan.org/pkg/cmap) to `glyphtounicode`. Fixes [#22](https://github.com/latextemplates/LNCS/issues/22).

### Removed

- Removed building of `llncs.dem` and `llncs.doc` from CircleCI script, because these files are not distributed by Springer anymore.

## [1.7.0] – 2018-03-10

### Added

- Support for [lualatex](http://www.luatex.org/) as compiler.
  When using "Times New Roman" due to space limitations, the font of the code is still "Latin Modern" in the case of lualatex.

### Fixed

- The font size of the bibliography is fixed.

### Changed

- The monospaced font is not variable any more.

## [1.6.1] – 2018-03-08

### Fixed

- Changed minimum requirement regarding version of `llncs.cls` to `2017/09/04` (version 2.19).
- Fix multiply defined label L2.

## [1.6.0] – 2018-03-07

### Changed

- Separated minted support to separate file `paper-minted.tex`.
- Changed minted style from friendly to bw.

### Added

- Added "aboveskip" and "belowskip" hints.
- Added example Java listing using minted.
- Added example XML listing using listings.

### Fixed

- The example listing is now floating. Otherwise, the listing flows from one page to the next and interrupted by a floating table.

## [1.5.0] – 2018-02-04

### Changed

- Ligatures are disabled for monospaced font. E.g., \texttt{--} stays `--` and is not converted to an en dash.
- Replace `splncs03.bst` by `splncsnat.bst`, which was [developed in a clean way](http://phaseportrait.blogspot.de/2011/02/natbib-compatible-bibtex-style-bst-file.html) by [@tpavlic](https://github.com/tpavlic).

### Added

- Example for `\citet` (enabled by `splncsnat.bst`).

## [1.4.1] – 2018-02-03

### Fixed

- Numbers in the bibliography are rendered as LNCS required again.

## [1.4.0] – 2018-02-02

### Added

- Support for `\cite[prenote][postnote]{ref}` to enable `\cite[based on][]{ref}` by including the [natib](https://www.ctan.org/pkg/natbib) package.
- Support for [booktabs](https://ctan.org/pkg/booktabs) package.

### Changed

- Removed `tracking=smallcaps` option in microtype to have letters in `\textsc{BPMN}` standing closer together.

## [1.3.0] – 2018-01-30

### Added

- Added ready-to-go configuration for [latexindent](https://ctan.org/pkg/latexindent).
- Added labeled "Conclusion and Outlook" section to enable an even quicker start.
- Added prepared usage of [llncsconf](https://github.com/adbrucker/llncsconf) package.
- Explicitly added package [hyperref](https://ctan.org/pkg/hyperref) to `paper.tex` in case users remove the `pdfcomment` package.

## [1.2.0] – 2018-01-19

### Added

- Added package [upquote](https://www.ctan.org/pkg/upquote) to enable backticks being properly rendered in listings.

### Fixed

- Listings by the packages minted and listings can be mixed now: The counter of "List." at the captions were different.

### Changed

- Replaced the outdated [mathptmx](https://ctan.org/pkg/mathptmx) by the [newtx](https://ctan.org/pkg/newtx) and [newtxtt](https://ctan.org/pkg/newtxtt) packages.
  Explained their activation (space saving technique).
- Blindtext now also in the conclusion.

## [1.1.1] – 2018-01-18

### Changed

- `download-llncs-files-from-springer.sh` now uses <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip> as `ftp.springer.de` seems to be an inofficial site.
- Removed download of required Springer files using gradle.
- Updated `README.md`: Merged "Features" and "Benefits" into "Features".

## [1.1.0] – 2018-01-17

### Added

- Added example `lstlisting` to show how the [listings](https://www.ctan.org/pkg/listings) package can be used.
- Added example listing typeset using [minted](https://github.com/gpoore/minted).
- Added `\usepackage[utf8]{inputenc}` to support input of non-ASCII characters using UTF-8.
- Added TeX magic comments.

### Changed

- Tweaked options for "microtype", especially `protrusion=alltext-nott`.

## [1.0.0] – 2018-01-16

First release using semantic versioning.

[Unreleased]: https://github.com/latextemplates/LNCS/compare/1.9.1...HEAD
[1.9.1]: https://github.com/latextemplates/LNCS/compare/1.9.0...1.9.1
[1.9.0]: https://github.com/latextemplates/LNCS/compare/1.8.0...1.9.0
[1.8.0]: https://github.com/latextemplates/LNCS/compare/1.7.0...1.8.0
[1.7.0]: https://github.com/latextemplates/LNCS/compare/1.6.1...1.7.0
[1.6.1]: https://github.com/latextemplates/LNCS/compare/1.6.0...1.6.1
[1.6.0]: https://github.com/latextemplates/LNCS/compare/1.5.0...1.6.0
[1.5.0]: https://github.com/latextemplates/LNCS/compare/1.4.1...1.5.0
[1.4.1]: https://github.com/latextemplates/LNCS/compare/1.4.0...1.4.1
[1.4.0]: https://github.com/latextemplates/LNCS/compare/1.3.0...1.4.0
[1.3.0]: https://github.com/latextemplates/LNCS/compare/1.2.0...1.3.0
[1.2.0]: https://github.com/latextemplates/LNCS/compare/1.1.1...1.2.0
[1.1.1]: https://github.com/latextemplates/LNCS/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/latextemplates/LNCS/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/latextemplates/LNCS/releases/tag/1.0.0
