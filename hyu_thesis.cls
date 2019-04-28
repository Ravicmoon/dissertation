\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{hyu_thesis}[2019/04/23 v0.1]
\LoadClass{report}

\usepackage{geometry}
\geometry{a4paper, total={210mm,297mm}, left=35mm, right=35mm, top=38mm, bottom=38mm, head=15mm, foot=15mm}
\linespread{2.0}
\usepackage[pdftex]{graphicx}
\usepackage[caption=false,font=normalsize]{subfig}
\usepackage[labelsep=period]{caption}
\usepackage{amsmath}
\usepackage{commath}
\usepackage{algorithmic, algorithm}
\renewcommand{\algorithmicrequire}{\textbf{Input:}}
\renewcommand{\algorithmicensure}{\textbf{Output:}}
\usepackage{cite}
\usepackage{hyperref}
\usepackage{cleveref}

\newcommand{\largefont}{\fontsize{16}{\baselineskip}\selectfont}
\newcommand{\mediumfont}{\fontsize{13}{\baselineskip}\selectfont}

\usepackage{titlesec}
\titleformat*{\section}{\titlelabel{\thesection\space}\bf\largefont}
\titleformat*{\subsection}{\titlelabel{\thesubsection\space}\bf\mediumfont}
\titleformat*{\subsubsection}{\titlelabel{\thesubsubsection\space}\bf\mediumfont}
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesubsection.\arabic{subsubsection}}

\renewcommand{\contentsname}{\largefont TABLE OF CONTENTS}
\renewcommand{\listfigurename}{\largefont LIST OF FIGURES}
\renewcommand{\listtablename}{\largefont LIST OF TABLES}
\renewcommand{\bibname}{\largefont BIBLIOGRAPHY}

\renewcommand{\figurename}{Fig.}

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