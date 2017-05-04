%
% This template uses (open source) code, from a previous template for a thesis
% at Imperial, by Nigel Lawrence, Bryan Clair, Nathan Dunfield, Jamie,
% and also from a template by Jordan Suchow, available at
% github.com/suchow/Dissertate.
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{icthesis}
\LoadClass[12pt,oneside,a4paper]{book}

\usepackage{amsmath,amssymb,amstext,amsthm,enumerate,fancyvrb,hyperref,mathtools
,setspace,tikz}
\usepackage[titletoc]{appendix}
\usepackage[titles]{tocloft}
\hypersetup{colorlinks,citecolor=ImperialColor,filecolor=black,linkcolor=black,
urlcolor=ImperialColor}

\RequirePackage{color}
\RequirePackage{graphicx}
\RequirePackage{lettrine}
\RequirePackage{setspace}
\RequirePackage{url}
\RequirePackage{verbatim}
\RequirePackage{fancyhdr}
\RequirePackage[square,numbers]{natbib}
\RequirePackage[tiny,md,sc]{titlesec}
\pagestyle{plain}
\RequirePackage{titling}
\RequirePackage[labelfont={bf,sf,footnotesize,singlespacing},
                textfont={sf,footnotesize,singlespacing},
                justification={justified,RaggedRight},
                singlelinecheck=false,
                margin=0pt,
                figurewithin=chapter,
                tablewithin=chapter]{caption}

\setlength{\parskip}{7pt}
\setlength{\parindent}{0pt}
\setlength{\headheight}{15pt}

\newtheorem{lemma}{Lemma}
\newtheorem{theorem}[lemma]{Theorem}
\newtheorem{proposition}[lemma]{Proposition}
\newtheorem{corollary}[lemma]{Corollary}
\newtheorem{conjecture}[lemma]{Conjecture}

\renewcommand{\thefootnote}{\fnsymbol{footnote}}

\let\oldtableofcontents=\tableofcontents
\let\oldlistoftables=\listoftables
\let\oldlistoffigures=\listoffigures
\let\oldbibliography=\bibliography
\renewcommand{\tableofcontents}
{\begin{singlespace}\oldtableofcontents\end{singlespace}\mainmatter}
\renewcommand{\listoftables}
{\begin{singlespace}\oldlistoftables\end{singlespace}}
\renewcommand{\listoffigures}
{\begin{singlespace}\oldlistoffigures\end{singlespace}}
\renewcommand{\bibliography}[1]
{\oldbibliography{#1}\addcontentsline{toc}{chapter}{\bibname}}
\renewcommand{\cftchapfont}{\normalsize \scshape}
\renewcommand\listfigurename{\sc List of figures}
\renewcommand\listtablename{\sc List of tables}
\renewcommand\contentsname{\sc Contents}
\renewcommand\bibname{\sc References}
\renewcommand{\bibnumfmt}[1]{[#1]}
\RequirePackage[newcentury]{quotchap}
\renewcommand*{\chapterheadstartvskip}{\vspace*{-0.5\baselineskip}}
\renewcommand*{\chapterheadendvskip}{\vspace{1.3\baselineskip}}

\providecommand\newthought[1]{%
   \addvspace{1.0\baselineskip plus 0.5ex minus 0.2ex}%
   \noindent\textsc{#1}%
}

\def\degreeyear#1{\gdef\@degreeyear{#1}}
\def\degreemonth#1{\gdef\@degreemonth{#1}}
\def\degree#1{\gdef\@degree{#1}}
\def\advisor#1{\gdef\@advisor{#1}}
\def\department#1{\gdef\@department{#1}}
\def\field#1{\gdef\@field{#1}}
\def\university#1{\gdef\@university{#1}}
\def\universitycity#1{\gdef\@universitycity{#1}}
\def\universitystate#1{\gdef\@universitystate{#1}}
\def\programname#1{\gdef\@programname{#1}}
\def\pdOneName#1{\gdef\@pdOneName{#1}}
\def\pdOneSchool#1{\gdef\@pdOneSchool{#1}}
\def\pdOneYear#1{\gdef\@pdOneYear{#1}}
\def\pdTwoName#1{\gdef\@pdTwoName{#1}}
\def\pdTwoSchool#1{\gdef\@pdTwoSchool{#1}}
\def\pdTwoYear#1{\gdef\@pdTwoYear{#1}}

\university{Imperial College London}
\universitycity{London}
\universitystate{United Kingdom}
\definecolor{ImperialColor}{rgb}{0.000, 0.243, 0.455}
\definecolor{chaptergrey}{rgb}{0.000, 0.243, 0.455}

\renewcommand{\frontmatter}{
\input{frontmatter/personalize}
\maketitle
\abstractpage
\dedicationpage
\acknowledgments
\listoffigures
\listoftables
\tableofcontents
\cleardoublepage
\setcounter{page}{1}
\pagenumbering{arabic}
}

\renewcommand{\maketitle}{
\doublespacing
\begin{titlepage}
\begin{center}
\null\vfill
{\LARGE\textcolor{ImperialColor}{\textsc{\thetitle}}}
\\
\vfill
{\sc \footnotesize
{\sc a thesis presented for the degree of}\\
Doctor of Philosophy of Imperial College London\\
{\sc and the}\\
Diploma of Imperial College\\
{\sc by} \\
}
{\large\sc{\theauthor}}
\vfill\vfill\vfill
%\includegraphics[width=0.28\textwidth]{figures/crest.jpg}\\[1em]
{\sc \footnotesize{
Department of {\@department}\\
Imperial College \\
180 Queen's Gate, London SW7 2BZ}
\vfill
{{\@degreemonth\ \@degreeyear}}
}
\end{center}
\end{titlepage}
\setstretch{1.2}
\pagenumbering{roman}
\addtocounter{page}{1}

\newpage
\hphantom{1}
\vfill
\noindent I certify that this thesis, and the research to which it refers,
are the product of my own work, and that any ideas or quotations from the
work of other people, published or otherwise, are fully acknowledged in
accordance with the standard referencing practices of the discipline.
\vfill
{\hfill Signed: \hrulefill}
\vfill

\chapter*{\sc Copyright}
This text is being distributed in an ``open source'' fashion, under the GNU Free
Documentation License (GFDL), much in the manner that open source software like
the Linux operating system is distributed. This confers certain rights on you,
the reader, but also carries certain restrictions that limit your ability to
restrict the rights of others. More information about how the open source model
operates both in general and in this particular instance can be found in the
text of the GNU Free Documentation License (GFDL).

\pagestyle{plain}
}

\newcommand{\abstractpage}{
\newpage
\pagestyle{fancy}
\lhead{Thesis advisor: Dr. \@advisor} \rhead{\@author}
\renewcommand{\headrulewidth}{0.0pt}
\vspace*{35pt}
\begin{center}
\Large \textcolor{ImperialColor}{\@title} \normalsize \\
\vspace*{20pt}
\scshape Abstract \\ \rm
\end{center}
\input{frontmatter/abstract}
\vspace*{\fill}
\newpage \lhead{} \rhead{}
\cfoot{\thepage}
}

\newcommand{\dedicationpage}{
\newpage \thispagestyle{fancy} \vspace*{\fill}
\it \noindent \input{frontmatter/dedication}
\vspace*{\fill} \newpage \rm
}

\newcommand{\acknowledgments}{
\chapter*{\sc Acknowledgments}
\noindent
\input{frontmatter/acknowledgements}
\vspace*{\fill} \newpage
}