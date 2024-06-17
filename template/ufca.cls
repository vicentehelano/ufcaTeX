%%
%% This is file `ufca.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ufca.dtx  (with options: `class')
%% 
%% This is the `ufca' document class used for composition of LaTeX
%% monographs (master and PhD thesis, and PhD qualifying exams)
%% satisfying the requirements of the Coordination of Research and
%% Graduate Courses in Engineering at the Federal University of
%% Rio de Janeiro.
%% 
%% Copyright (C) 2008 Vicente Helano and George Ainsworth Jr.
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License version 3 as
%% published by the Free Software Foundation.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%% GNU General Public License version 3 for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% version 3 along with this package (see COPYING file).
%% If not, see <http://www.gnu.org/licenses/>.
%% 
%% Author(s): Vicente Helano,
%%            George Ainsworth
%% 
%% \CheckSum{1407}
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\def\filename{ufca.dtx}
\def\fileversion{v3.0}
\def\filedate{2020/03/02}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{ufca}[\filedate\ \fileversion\ UFCA academic monographs.]
\LoadClass[12pt,a4paper,oneside]{book}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyphenat}
\RequirePackage{lastpage}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{eqparbox}
\RequirePackage{multirow}
\RequirePackage{ltxcmds}
\RequirePackage[a4paper,bindingoffset=0.0cm,vcentering=true,%
top=2.5cm,bottom=2.5cm,left=3.0cm,right=3.0cm]{geometry}
\def\ufcaTeX{{\rm C\kern-.05em{\sc o\kern-.025em p\kern-.025em
p\kern-.025em e}}\kern-.08em
T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX\spacefactor1000}
\newboolean{maledoc}
\setboolean{maledoc}{false}
\newif\if@english\@englishfalse
\DeclareOption{english}{\@englishtrue}
\DeclareOption{lic}{%
  \newcommand{\@degree}{Lic.}
  \newcommand{\@degreename}{Licenciatura}
  \newcommand{\local@degname}{Licenciado}
  \newcommand{\foreign@degname}{Licenciate}
  \newcommand\local@doctype{Monografia}
  \newcommand\foreign@doctype{Monograph}
}
\DeclareOption{bsc}{%
  \newcommand{\@degree}{B.Sc.}
  \newcommand{\@degreename}{Graduação}
  \newcommand{\local@degname}{Bacharel}
  \newcommand{\foreign@degname}{Bachelor}
  \newcommand\local@doctype{Monografia}
  \newcommand\foreign@doctype{Monograph}
}
\DeclareOption{msc}{%
  \newcommand{\@degree}{M.Sc.}
  \newcommand{\@degreename}{Mestrado}
  \newcommand{\local@degname}{Mestre}
  \newcommand{\foreign@degname}{Master}
  \newcommand\local@doctype{Disserta{\c c}{\~ a}o}
  \newcommand\foreign@doctype{Dissertation}
}
\DeclareOption{dsc}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doutorado}
  \newcommand{\local@degname}{Doutor}
  \newcommand{\foreign@degname}{Doctor}
  \newcommand\local@doctype{Tese}
  \newcommand\foreign@doctype{Thesis}
}
\DeclareOption{numbers}{%
  \PassOptionsToPackage{numbers}{natbib}
}
\onehalfspacing
\DeclareOption{doublespacing}{%
  \doublespacing
}
\ProcessOptions\relax
\if@english
  \RequirePackage[english]{babel}
\else
  \RequirePackage[english,brazil]{babel}
\fi
\addto{\captionsenglish}{%
  \renewcommand{\bibname}{References}
}
\newcommand\program[1]{%
  \ifthenelse{\equal{#1}{PROFMAT}}
    {\global\def\local@progname{Matem{\' a}tica em Rede Nacional}
     \global\def\local@coursename{Matem{\' a}tica}
     \global\def\local@coursearea{Matem{\' a}tica na Educa{\c c}{\~ a}o B{\' a}sica}
     \global\def\foreign@progname{Mathematics}
     \global\def\local@centername{Centro de Ci{\^ e}ncias e Tecnologia}
     \global\def\foreign@centername{Science and Technology Center}}{}
}
\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}
\newcommand\foreigntitle[1]{%
  \global\def\foreign@title{#1}%
}
\newcount\@advisor\@advisor0
\newcommand\advisor[5]{%
  \global\@namedef{UfcaAdvisorTitle:\expandafter\the\@advisor}{#1}
  \global\@namedef{UfcaAdvisorName:\expandafter\the\@advisor}{#2}
  \global\@namedef{UfcaAdvisorSurname:\expandafter\the\@advisor}{#3}
  \global\@namedef{UfcaAdvisorDegree:\expandafter\the\@advisor}{#4}
  \global\@namedef{UfcaAdvisorAffiliation:\expandafter\the\@advisor}{#5}
  \global\advance\@advisor by 1
  \ifnum\@advisor>1
    \renewcommand\local@advisorstring{Orientadores}
    \renewcommand\foreign@advisorstring{Advisors}
  \fi
}
\newcount\@examiner\@examiner0
\newcommand\examiner[5]{%
  \global\@namedef{UfcaExaminerTitle:\expandafter\the\@examiner}{#1}
  \global\@namedef{UfcaExaminerName:\expandafter\the\@examiner}{#2}
  \global\@namedef{UfcaExaminerSurname:\expandafter\the\@examiner}{#3}
  \global\@namedef{UfcaExaminerDegree:\expandafter\the\@examiner}{#4}
  \global\@namedef{UfcaExaminerAffiliation:\expandafter\the\@examiner}{#5}
  \global\advance\@examiner by 1
}
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}
\renewcommand\date[3]{%
  \day=#1
  \month=#2
  \year=#3
}
\newcommand\local@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}
\newcommand\foreign@monthname{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
\newcounter{keywords}
\newcommand\keyword[1]{%
  \global\@namedef{UfcaKeyword:\expandafter\the\c@keywords}{#1}
  \global\addtocounter{keywords}{1}
}
\newcounter{foreignkeywords}
\newcommand\foreignkeyword[1]{%
  \global\@namedef{UfcaForeignKeyword:\expandafter\the\c@foreignkeywords}{#1}
  \global\addtocounter{foreignkeywords}{1}
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  \thispagestyle{empty}
  \setcounter{page}{2}
  \makefrontpage
  \clearpage
  \pagestyle{empty}
  \ifthenelse{\boolean{maledoc}}{}{\makecatalog}%
  \clearpage
  \makeapprovalpage
  \clearpage
}
\renewcommand\mainmatter{%
  \ufca@mainBegin
  \cleardoublepage
  \@mainmattertrue
  \pagestyle{plain}
  \pagenumbering{arabic}}
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi}
\renewcommand\maketitle{%
  \pagenumbering{alph}
  \ltx@ifpackageloaded{hyperref}{\ufca@hypersetup}{}%
  \begin{titlepage}
  \noindent\begin{center}
  \vspace*{1.5mm}
  \makebox[30mm][c]{\includegraphics[scale=0.525]{ufca-logo}}\par
  \vspace*{1.5mm}
  \textbf{\MakeUppercase UNIVERSIDADE FEDERAL DO CARIRI}\par
  \textbf{\MakeUppercase\local@centername}\par
  \textbf{PROGRAMA DE P{\' O}S-GRADUA{\c C}{\~ A}O EM \MakeUppercase\local@progname}
  \end{center}
  \vspace*{1.8cm}
  \begin{center}
  \textbf{\nohyphens{\MakeUppercase\@authname\ \MakeUppercase\@authsurn}}\par
  \vspace*{3cm}
  \textbf{\nohyphens{%
    \if@english
      \MakeUppercase\foreign@title
    \else
      \MakeUppercase\local@title
    \fi}}\par
  \end{center}
  \vspace*{\fill}
  \begin{center}
  \textbf{\MakeUppercase\local@cityname}\par
  \textbf{\number\year}
  \end{center}
  \end{titlepage}
  \global\let\maketitle\relax%
  \global\let\and\relax}
\newcommand\makefrontpage{%
  \begin{center}
  \vspace*{0.3cm}
  \nohyphens{\MakeUppercase\@authname\ \MakeUppercase\@authsurn}\par
  \vspace*{3.3cm}
  \nohyphens{%
    \if@english
      \MakeUppercase\foreign@title
    \else
      \MakeUppercase\local@title
    \fi}\par
  \end{center}
  \vspace*{2.1cm}
  \begin{flushright}
  \begin{minipage}{8.45cm}
  \frontcover@maintext
  \end{minipage}\par
  \vspace*{7.5mm}
  \nohyphens{%
  \begin{tabularx}{8.45cm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
    \local@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname UfcaAdvisorName:\the\count1%
        \expandafter\endcsname\expandafter\space%
        \csname UfcaAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@%
        \expandafter&\expandafter\space%
        \csname UfcaAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname UfcaAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}}\par
  \end{flushright}
  \vspace*{\fill}
  \begin{center}
  \MakeUppercase\local@cityname\par
  \number\year
  \end{center}}
\newcommand\makeapprovalpage{%
  \begin{center}
    {\MakeUppercase\@authname\ \MakeUppercase\@authsurn}\par
    \vspace*{1.5cm}
    \sloppy\nohyphens{
      \if@english
        \MakeUppercase\foreign@title
      \else
        \MakeUppercase\local@title
      \fi}\par
  \end{center}\par
  \vspace*{1cm}
  \begin{flushright}
  \begin{minipage}{8.45cm}
  \frontcover@maintext
  \end{minipage}
  \end{flushright}\par
  \vspace*{15mm}
  \noindent\local@approvedname: \number\day\ de\ \MakeLowercase\local@monthname\ de\ \number\year.\par
  \vspace*{2cm}
  \noindent\begin{center}
    \noindent{BANCA EXAMINADORA}\par
    \count1=0
    \@whilenum \count1<\@examiner \do {
        \vskip26\p@ \baselineskip12pt
    \eqmakebox[signture@list][c]{\hrulefill}\\
    \eqmakebox[signture@list][c]{%
        \ \ \ \protect\csname UfcaExaminerTitle:\the\count1\endcsname\space\csname UfcaExaminerDegree:\the\count1\endcsname\space\csname UfcaExaminerName:\the\count1\endcsname\space\csname UfcaExaminerSurname:\the\count1\endcsname\ \ \ }\\
        \vskip3\p@ \baselineskip12pt
    \eqmakebox[signture@list][c]{%
    \ \ \ \protect\csname UfcaExaminerAffiliation:\the\count1 \endcsname\ \ \ }\\
        \advance\count1 by 1}
  \end{center}\par
  \vspace*{\fill}}
\newcommand\ufca@hypersetup{%
\begingroup
  % changes to \toks@ and \count@ are kept local;
  % it's not necessary for them, but it is usually the case
  % for \count1, because the first ten counters are written
  % to the DVI file, thus you got lucky because of PDF output
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{keywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname UfcaKeyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname UfcaKeyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter;\expandafter\space
        \csname UfcaKeyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \edef\x{\endgroup
    \noexpand\hypersetup{%
      pdfkeywords={\the\toks@}%
    }%
  }%
\x
\hypersetup{%
  pdfauthor={\@authname\ \@authsurn},
  pdftitle={\local@title},
  pdfsubject={\local@doctype\ de \@degreename\ em \local@coursename\ da UFCA},
  pdfcreator={LaTeX with ufcaTeX toolkit},
  breaklinks={true},
  raiselinks={true},
  pageanchor={true},
}}
\newcommand\makedata{%
      \begin{minipage}[c]{0.8\textwidth}
      \setlength{\parindent}{5mm}
      \nohyphens{%
        \if@english
          \foreign@title%
        \else
          \local@title%
        \fi~/~\@authname\ \@authsurn. -- \number\year.}\par
      \pageref{front:pageno},
      \pageref{LastPage}
      p.\@ifundefined{r@cat:lofflag}{}{\pageref{cat:lofflag}} $29,7$cm.\par
      % There is an issue here. When the last entry must be split between lines,
      % the spacing between it and the next paragraph becomes smaller.
      % Should we manually introduce a fixed space? But how could we know that
      % a name was split? Is this happening yet?
      \nohyphens{%
      \begin{tabularx}{100mm}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
        \local@advisorstring: &
        \count1=0
        \toks@={}
        \@whilenum \count1<\@advisor \do{%
        \ifcase\count1 % same as \ifnum0=\count1
          \toks@=\expandafter{\csname UfcaAdvisorName:\the\count1%
          \expandafter\endcsname\expandafter\space%
          \csname UfcaAdvisorSurname:\the\count1\endcsname\\}
        \else
          \toks@=\expandafter\expandafter\expandafter{%
            \expandafter\the\expandafter\toks@
            \expandafter&\expandafter\space
            \csname UfcaAdvisorName:\the\count1\expandafter\endcsname%
            \expandafter\space\csname UfcaAdvisorSurname:\the\count1\endcsname\\
          }%
        \fi
        \advance\count1 by 1}
        \the\toks@
      \end{tabularx}}\par
      \nohyphens{\local@doctype\ ({\@degreename}) --
      \local@universityname, \local@centername, Programa de Pós-graduação em \local@progname, \local@cityname, \number\year.}\par
      Inclui refer{\^ e}ncias bibliogr{\' a}ficas: p. \pageref{bib:begin} -- \pageref{bib:end}.\par
      \count1=0
      \count2=1
      \nohyphens{\@whilenum \count1<\value{keywords} \do {%
        \number\count2. \csname UfcaKeyword:\the\count1 \endcsname.
        \advance\count1 by 1
        \advance\count2 by 1}
      I. \csname UfcaAdvisorSurname:0\endcsname,%
      \ \csname UfcaAdvisorName:0\endcsname%
      \ifthenelse{\@advisor>1}{\ \emph{et~al.}{}}~(\ifthenelse{\@advisor>1}{Orientadores}{Orientador}).
      II. \local@universityname, \local@centername, Programa de Pós-graduação em \local@progname.
      III. T{\' i}tulo.}
      \end{minipage}}

\newcommand\cataloging[2]{%
  \global\@namedef{UfcaCatalogAuthorCode:\expandafter\the\c@keywords}{#1}
  \global\@namedef{UfcaCatalogCdd:\expandafter\the\c@keywords}{#2}
}

\newcommand\makecatalog{%
  \vspace*{\fill}
  \begin{center}
  {\small\textbf{Dados Internacionais de Catalogação na Publicação}}\par
  \vspace*{-0.4em}
  {\small\textbf{Sistema de Bibliotecas da Universidade Federal do Cariri}}\par
  \vspace*{0.4em}
      \begin{tabularx}{\textwidth}{lX}
        \toprule
        \csname UfcaCatalogAuthorCode:0\endcsname & {\small \setlength{\parindent}{5mm}
      \noindent\sloppy\nohyphens\@authsurn,
      \nohyphens\@authname\par}\\
              & {\small\makedata}\\
              & \multicolumn{1}{r}{CDD \csname UfcaCatalogCdd:0\endcsname}\\
        \bottomrule
      \end{tabularx}
  \end{center}\vspace*{2.5cm}}
\newcommand\dedication[1]{
  \gdef\@dedic{#1}
    \cleardoublepage
    \vspace*{\fill}
    \begin{flushright}
      \begin{minipage}{60mm}
        \raggedleft \it \normalsize \@dedic
      \end{minipage}
    \end{flushright}}

\newenvironment{abstract}{%
  \clearpage
  \thispagestyle{plain}
  \noindent\begin{center}
    \noindent\abstract@toptext
  \end{center}\par
  \noindent\begin{minipage}[c]{\textwidth}
  \vspace*{1.5cm}}{\end{minipage}\par
    \vspace*{0.6cm}
    \begin{flushleft}
    \noindent\textbf{Palavras-chave:}\
      \count1=0
      \nohyphens{\@whilenum \count1<\value{keywords} \do {%
        \csname UfcaKeyword:\the\count1 \endcsname.
        \advance\count1 by 1}}\end{flushleft}\par\vspace*{\fill}}
\newenvironment{foreignabstract}{%
  \clearpage
  \thispagestyle{plain}
  \begin{otherlanguage}{english}
  \noindent\begin{center}
    \noindent\foreignabstract@toptext
  \end{center}\par
  \noindent\begin{minipage}[c]{\textwidth}
  \vspace*{1.5cm}}{%
  \end{minipage}\par
    \vspace*{0.6cm}
    \begin{flushleft}
    \noindent\textbf{Keywords:}\
      \count1=0
      \nohyphens{\@whilenum \count1<\value{foreignkeywords} \do {%
        \csname UfcaForeignKeyword:\the\count1 \endcsname.
        \advance\count1 by 1}}\end{flushleft}\par
  \end{otherlanguage}
  \vspace*{\fill}
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\foreign@title\@empty
  \global\let\foreign@title\relax
  \global\let\local@title\@empty
  \global\let\local@title\relax
  \global\let\author\relax
  \global\let\author\relax
  \global\let\date\relax}
\renewcommand\listoffigures{%
    \ufca@hasLof
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \addcontentsline{toc}{chapter}{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \addcontentsline{toc}{chapter}{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\newcommand\printlosymbols{%
\renewcommand\glossaryname{\listsymbolname}%
\@input@{\jobname.los}}
\def\makelosymbols{%
  \newwrite\@losfile
  \immediate\openout\@losfile=\jobname.syx
  \def\symbl{\@bsphack\begingroup
             \@sanitize
             \@wrlos}\typeout
  {Writing index of symbols file \jobname.syx}%
  \let\makelosymbols\@empty
}
\@onlypreamble\makelosymbols
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2}{\thepage}}%
    \endgroup
    \@esphack}}}
\newcommand\printloabbreviations{%
\renewcommand\glossaryname{\listabbreviationname}%
\@input@{\jobname.lab}}
\def\makeloabbreviations{%
  \newwrite\@labfile
  \immediate\openout\@labfile=\jobname.abx
  \def\abbrev{\@bsphack\begingroup
              \@sanitize
              \@wrlab}\typeout
  {Writing index of abbreviations file \jobname.abx}%
  \let\makeloabbreviations\@empty
}
\@onlypreamble\makeloabbreviations
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2}{\arabic{page}}}%
    \endgroup
    \@esphack}}}
\AtBeginDocument{%
  \ltx@ifpackageloaded{hyperref}{
    \def\ufca@bibEnd{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:end}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\ufca@bibBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:begin}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\ufca@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}{page.\roman{page}}{}}}}%
    \def\ufca@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}{page.\roman{page}}{}}}}%
  }{%
    \def\ufca@bibEnd{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:end}{{}{\arabic{page}}{}}}}%
    \def\ufca@bibBegin{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:begin}{{}{\arabic{page}}{}}}}%
    \def\ufca@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}}}}%
    \def\ufca@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}}}}%
  }%
}
\newdimen\bibindent%
\setlength\bibindent{1.5em}%
\renewenvironment{thebibliography}[1]%
     {\onehalfspacing%
      \chapter*{\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}%
      \ufca@bibBegin
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\setlength{\labelwidth}{0ex}%
            \setlength{\leftmargin}{9.0ex}%
            \setlength{\itemindent}{-9.0ex}%
            \advance\leftmargin\labelsep%
            \@openbib@code%
            \usecounter{enumiv}%
            \let\p@enumiv\@empty%
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy%
      \clubpenalty4000%
      \@clubpenalty \clubpenalty%
      \widowpenalty4000%
      \sfcode`\.\@m}%
     {\def\@noitemerr%
       {\@latex@warning{Empty `thebibliography' environment}}%
       \ufca@bibEnd
      \endlist}
\newenvironment{theglossary}{%
  \if@twocolumn%
    \@restonecoltrue\onecolumn%
  \else%
    \@restonecolfalse%
  \fi%
  \@mkboth{\MakeUppercase\glossaryname}%
  {\MakeUppercase\glossaryname}%
  \chapter*{\glossaryname}%
  \addcontentsline{toc}{chapter}{\glossaryname}
  \list{}
  {\setlength{\listparindent}{0in}%
   \setlength{\labelwidth}{1.0in}%
   \setlength{\leftmargin}{1.5in}%
   \setlength{\labelsep}{0.5in}%
   \setlength{\itemindent}{0in}}%
   \sloppy}%
  {\if@restonecol\twocolumn\fi%
\endlist}
\renewenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \thispagestyle{plain}\parindent\z@
  \addcontentsline{toc}{chapter}{\indexname}
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
\if@english
  \newcommand\listabbreviationname{List of Abbreviations}
  \newcommand\listsymbolname{List of Symbols}
  \newcommand\glossaryname{Glossary}
\else
  \newcommand\listabbreviationname{Lista de Abreviaturas}
  \newcommand\listsymbolname{Lista de S{\' i}mbolos}
  \newcommand\glossaryname{Gloss{\' a}rio}
\fi
\newcommand\local@advisorstring{Orientador}
\newcommand\foreign@advisorstring{Advisor}
\ifthenelse{\boolean{maledoc}}{%
  \newcommand\local@approvedname{Aprovado em}%
}{%
  \newcommand\local@approvedname{Aprovada em}%
}
\newcommand\local@universityname{Universidade Federal do Cariri}
\newcommand\local@deptstring{Programa}
\newcommand\foreign@deptstring{Department}
\newcommand\local@cityname{Juazeiro do Norte}
\newcommand\local@statename{CE}
\newcommand\local@countryname{Brasil}
\newcommand\frontcover@maintext{
  \sloppy\nohyphens{\local@doctype\ de \@degreename\
  \ifthenelse{\boolean{maledoc}}{apresentado}{apresentada}
  ao Programa de P{\' o}s-gradua{\c c}{\~ a}o em \local@progname\
  do \local@centername\
  da \local@universityname, como parte dos requisitos
  necess{\' a}rios {\` a} obten{\c c}{\~ a}o do t{\' i}tulo de
  \local@degname\ em \local@coursename.
  \local@coursearea.}
}
\newcommand\frontpage@bottomtext{%
  \begin{center}
  {\MakeUppercase{\local@cityname, \local@statename\ -- \local@countryname}}\par
  {\MakeUppercase\local@monthname\ DE \number\year}
  \end{center}%
}
\newcommand\abstract@toptext{\noindent\textbf{RESUMO}}
\newcommand\foreignabstract@toptext{\noindent\textbf{ABSTRACT}}

%% 
%%
%% End of file `ufca.cls'.
