Roc Project Development and Style Guide
=======================================


Style
-----


### General Style ###

* Lines wrapped at 72 characters (per Python).
* Two spaces between sentences.  (Easier to read in fixed-width text and
  Emacs default.  Also less ambiguous.)
* Two empty lines between sections.
* Abbreviations treated like words with respect to capitalization
  etc. in identifiers, code, file names, etc. (contrary to Java style).
  For example, "Http", "Xml", "Csv".  Abbreviations regular in other
  text (e.g. documentation).
* Punctuation outside or inside quotation marks?  Traditional style:
  latter; my programming eyes: former.
* Otherwise standard per-language style unless noted
* License notice part of every file.  Bottom for docs.  Top for code.
  > Copyright (c) <year> Roc Project
  > This is free software.  See LICENSE.txt for details.


### Pandoc / Markdown ###

* Pandoc extensions where appropriate (but don't expect GitHub to
  interpret (What to do about that?))
* Emacs [Markdown mode](http://jblevins.org/projects/markdown-mode/).
* ".md" extension per GitHub.  But what if pandoc?
* Newline after heading.  Two after title.
* Two spaces between table columns (if using spaces)
* Do hanging indents, no "lazy" styles
* Indent nested list items to text indent
  * Like so


Development
-----------


### Social and Political Model ###

**TODO**


### Project Layout ###

* Have `src` and `test` directories
* Different pieces as directories under `src`.
* `doc` for generated or documentation sources?
* `build` for build storage.  Can be removed to "clean".
* High-level ideas documented in file CONTENTS.md.  (Maintain it!)


### Branching Model ###

* Everything derives from `master`.  It is used for integration and
  should be as stable as possible.
* Develop on your own branch: dev/<username>
* Release on `release`.  Everything on release should be stable and
  release-worthy.
* Create other branches as needed for bugs, large features, etc.
* Meta can probably be done directly on `master`.


References
----------

* [Producing Open Source
  Software](http://producingoss.com/en/index.html) I found this via a
  web search and then realized I had seen it on Jeff Atwood's
  recommended reading list.


Copyright (c) 2012 Roc Project
This is free software.  See LICENSE.txt for details.