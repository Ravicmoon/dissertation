\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hyu_thesis}[2019/04/23 v0.1]
\LoadClass{report}

\usepackage{geometry}
\geometry{a4paper, left=35mm, right=35mm, top=53mm, bottom=53mm, head=15mm, foot=15mm}
\usepackage{graphicx}
\usepackage{rotating}
\usepackage[caption=false,font=small]{subfig}
\usepackage[labelsep=period]{caption}
\usepackage{amsmath}
\usepackage{amsfonts}
\usepackage{commath}
\usepackage{mathtools}
\usepackage[hyphens]{url}
\usepackage[hidelinks]{hyperref}  
\usepackage{cleveref}
\usepackage{algorithmic, algorithm}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\usepackage{cite}
\usepackage{lmodern}
\usepackage{pgfplots}
\usepackage{pgfplotstable}
\pgfplotsset{compat=1.16}
\usepackage{booktabs}
\usepackage{verbatim}
\usepackage{pdfpages}
\usepackage{kotex}

\usepackage{fontspec}
\setmainfont[Ligatures=TeX,BoldFont=*,BoldFeatures=FakeBold,ItalicFont=*,ItalicFeatures=FakeSlant]{Batang}
%\setmainfont{NanumMyeongjo}
\linespread{2.0}

\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\DeclarePairedDelimiter\round{\lfloor}{\rceil}

\newcommand{\etal}{\textit{et al}.}
\newcommand{\largefont}{\fontsize{16}{\baselineskip}\selectfont}
\newcommand{\mediumfont}{\fontsize{13}{\baselineskip}\selectfont}

\usepackage{titlesec}
\titleformat{\chapter}{\bf\largefont}{\thechapter}{1em}{}
\titleformat*{\section}{\titlelabel{\thesection\space}\bf\mediumfont}
\titleformat*{\subsection}{\titlelabel{\thesubsection\space}\bf\mediumfont}
\titleformat*{\subsubsection}{\titlelabel{\thesubsubsection\space}\bf\mediumfont}
\renewcommand{\thesection}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

\renewcommand{\contentsname}{\largefont \textsc{TABLE OF CONTENTS}}
\renewcommand{\listfigurename}{\largefont \textsc{LIST OF FIGURES}}
\renewcommand{\listtablename}{\largefont \textsc{LIST OF TABLES}}
\renewcommand{\bibname}{\largefont \textsc{BIBLIOGRAPHY}}

\renewcommand{\figurename}{Figure}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}
\renewcommand{\thetable}{\thechapter-\arabic{table}}

\makeatletter

\newcommand\frontmatter
{
		\cleardoublepage
		\pagenumbering{roman}
}
\newcommand\mainmatter
{
		\cleardoublepage
		\pagenumbering{arabic}
}
\newcommand\backmatter
{
		\if@openright
		\cleardoublepage
		\else
		\clearpage
		\fi
}

\renewcommand{\l@figure}{\@dottedtocline{1}{0em}{3.0em}}
\renewcommand{\l@table}{\@dottedtocline{1}{0em}{3.0em}}

\makeatother