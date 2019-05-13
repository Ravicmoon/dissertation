\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hyu_thesis}[2019/04/23 v0.1]
\LoadClass{report}

\usepackage{geometry}
\geometry{a4paper, left=35mm, right=35mm, top=53mm, bottom=53mm, head=15mm, foot=15mm}
\linespread{2.0}
\usepackage[pdftex]{graphicx}
\usepackage{rotating}
\usepackage[caption=false,font=small]{subfig}
\usepackage[labelsep=period]{caption}
\usepackage{amsmath}
\usepackage{commath}
\usepackage{mathtools}
\usepackage{algorithmic, algorithm}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\usepackage{cite}
\usepackage{cleveref}
\usepackage{lmodern}
\usepackage{amsfonts}

\DeclarePairedDelimiter\ceil{\lceil}{\rceil}
\DeclarePairedDelimiter\floor{\lfloor}{\rfloor}
\DeclarePairedDelimiter\round{\lfloor}{\rceil}

\newcommand{\etal}{\textit{et al}.}
\newcommand{\largefont}{\fontsize{16}{\baselineskip}\selectfont}
\newcommand{\mediumfont}{\fontsize{13}{\baselineskip}\selectfont}

\usepackage{titlesec}
\titleformat{\chapter}
{\bf\largefont}{\thechapter}{1em}{}
\titleformat*{\section}{\titlelabel{\thesection\space}\bf\mediumfont}
\titleformat*{\subsection}{\titlelabel{\thesubsection\space}\bf\mediumfont}
\titleformat*{\subsubsection}{\titlelabel{\thesubsubsection\space}\bf\mediumfont}
\renewcommand{\thesection}{\thechapter.\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

\renewcommand{\contentsname}{\largefont TABLE OF CONTENTS}
\renewcommand{\listfigurename}{\largefont LIST OF FIGURES}
\renewcommand{\listtablename}{\largefont LIST OF TABLES}
\renewcommand{\bibname}{\largefont BIBLIOGRAPHY}

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

\makeatother