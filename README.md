# ufcaTeX

This project provides a LaTeX document class suitable for writing academic
dissertations and thesis according to the formatting rules established at Universidade
Federal do Cariri (UFCA).

The 'ufca' class contains a minimalist set of macro commands which allows its
users to create the required textual elements following the UFCA
guidelines. Among these elements, there are a front cover,
a title page, cataloging details, native and foreign languages abstracts, table
of contents, and list of bibliographic references.

Although it is tied to the UFCA guidelines, it can be easily ported to other institutions.


## How Much

> This program is free software; you can redistribute it and/or modify
> it under the terms of the GNU General Public License version 3 as
> published by the Free Software Foundation.


### Content

The development of this class follows the Comprehensive TeX Archive
Network (CTAN) standards. It is basically composed by an installation file ('ufca.ins') and the main source file ('ufca.dtx'). The full sources contain:

  1. COPYING: full text of the GNU General Policy License version 3.

  2. Makefile: used to extract the ufca class and build the
     documentation and a sample thesis.

  3. README.md: describe the UFCATeX package.

  4. ufca-{plain,unsrt}.bst: alphabetically sorted and unsorted numbered
     BibTeX styles, Natbib compatible.

  5. ufca.dtx: main source file; contains the documentation, a sample
     thesis and a Makeindex style.

  7. ufca.ins: used to strip out the ufca document class from `ufca.dtx'.

  8. ufca-logo.[eps,pdf]: images included in the front cover.

  9. example.bib: sample BibTeX database for being used by example.tex.

Our release packages contain the following files:

  1. COPYING: full text of the GNU General Policy License version 3.

  2. README.md: describe the UFCATeX package.

  3. ufca.cls: the main file. It is a LaTeX document class.

  4. ufca-{plain,unsrt}.bst: alphabetically sorted and unsorted numbered
     BibTeX styles, Natbib compatible.

  5. ufca.ist: Makeindex style for creating lists of symbols
     and abbreviations.

  6. ufca.pdf: UFCATeX documentation.

  7. example.{tex,bib}: sample thesis using ufca class.

  8. ufca-logo.[eps, pdf]: images included in the front cover.


## Installing

If you have some experience with LaTeX classes and packages, you won't have any
difficulty when installing UFCATeX. It should be installed as any other LaTeX
package you have ever used. So, you can save your time skipping this section.

The impatient user should get a thesis template [here](#).

For the enthusiastic newbies, we give here succinct instructions for installing
the UFCATeX bundle.

There exist two possible ways of obtaining UFCATeX. You can download a release
or the sources. Each of these has its own installation method. We describe both
in the following sections.

### From releases

Suppose TEXMF is a variable which stores the path of your local LaTeX tree.
Then you should copy the files ufca.cls, ufca.ist and ufca-unsrt.bst to
$TEXMF/tex/latex/ufca, $TEXMF/makeindex/ufca and $TEXMF/bibtex/bst/ufca,
respectively. The image files minerva.eps and minerva.pdf go into the same
directory as ufca.cls. In the end, you have to type 'texhash' to update your
LaTeX tree and to make UFCATeX visible to your LaTeX compiler.

### From sources

For installing from sources, type:

```bash
  latex ufca.ins
```

and you will get all the files you need. They are all stripped out from
ufca.dtx. Now, you should follow the instructions in the 'From releases'
section.


## Help & Support

Please, send any comments, suggestions and questions to our [Discussions](https://github.com/vicentehelano/ufcaTeX/discussions).
