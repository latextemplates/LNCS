# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

### Fixed
- Listings by the packages minted and listings can be mixed now: The counter of "List." at the captions were different.

## [1.1.1]

### Changed
- `download-llncs-files-from-springer.sh` now uses <ftp://ftp.springernature.com/cs-proceeding/llncs/llncs2e.zip> as `ftp.springer.de` seems to be an inofficial site.
- Removed download of required Springer files using gradle.
- Updated `README.md`: Merged "Features" and "Benefits" into "Features"

## [1.1.0] - 2018-01-17

### Added
- Added example `lstlisting` to show how the [listings](https://www.ctan.org/pkg/listings) package can be used.
- Added example listing typeset using [minted](https://github.com/gpoore/minted).
- Added `\usepackage[utf8]{inputenc}` to support input of non-ASCII characters using UTF-8.
- Added TeX magic comments

### Changed
- Tweaked options for "microtype", especially `protrusion=alltext-nott`


## [1.0.0] - 2018-01-16

First release using semantic versioning.

[Unreleased]: https://github.com/latextemplates/LNCS/compare/1.1.1...HEAD
[1.1.1]: https://github.com/latextemplates/LNCS/compare/1.1.0...1.1.1
[1.1.0]: https://github.com/latextemplates/LNCS/compare/1.0.0...1.1.0
[1.0.0]: https://github.com/latextemplates/LNCS/releases/tag/1.0.0
