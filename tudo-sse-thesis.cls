\ProvidesClass{tudo-sse-thesis}[2021/10/05 v1.0 TU Dortmund Secure Software Engineering Group Thesis Template]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[titlepage=firstiscover,parskip=half  ]{scrbook}

% Force XeLaTeX
\RequirePackage{ifxetex}
\RequireXeTeX

\RequirePackage{graphicx}
\RequirePackage{url}
\RequirePackage{geometry}
\RequirePackage{xifthen}
\RequirePackage{wrapfig}
\RequirePackage{textpos}
\RequirePackage{babel}
\RequirePackage{multicol}
\RequirePackage[giveninits=true,
uniquename=false,
uniquelist=false,
hyperref=auto,
maxbibnames=99,
maxcitenames=2,
style=trad-abbrv,
citestyle=numeric,
backref=false,
natbib=true,
backend=biber]{biblatex}
\RequirePackage{xcolor}
\RequirePackage[quiet]{fontspec}
\RequirePackage{pdfpages}

\defaultfontfeatures{Ligatures=TeX}
% Font Configuration

\RequirePackage{lmodern}

\RequirePackage{newtxmath}

\setkomafont{pagehead}{\sffamily}
\setkomafont{pagenumber}{\sffamily}
\setkomafont{footnote}{\rmfamily}
\setkomafont{caption}{\rmfamily}
\setkomafont{captionlabel}{\rmfamily}

% Listings
\RequirePackage{listings}
\definecolor{KWColor}{rgb}{0.37,0.08,0.25}
\definecolor{CommentColor}{rgb}{0.133,0.545,0.133}
\definecolor{StringColor}{rgb}{0,0.126,0.941}
\lstset{
		language=Java,
    float=th,
        columns=fullflexible,
        basicstyle=\scriptsize\ttfamily,
        numbers=left,
        numberstyle=\tiny\color{black},
        captionpos=b,
        xleftmargin=15pt,
	      tabsize=4,
        numbersep=5pt,
      	stepnumber=1,
        extendedchars=true,
        breaklines=true,
        breakatwhitespace=true,
        showtabs=false,
        showspaces=false,
        showstringspaces=false,
        keywordstyle=\bfseries\color{KWColor},
        commentstyle=\color{CommentColor},
        stringstyle=\color{StringColor},
        escapechar=\%,
 		language=Java,
		escapeinside={(*@}{@*)}
}


% Internationalization
\newcommand{\thesistype}{}
\newcommand{\examination}{}

\DeclareOption{german}{%
  \PassOptionsToPackage{main=german,english}{babel}
  \DeclareOption{ba}{\renewcommand{\thesistype}{Bachelorarbeit}}
  \DeclareOption{ma}{\renewcommand{\thesistype}{Masterarbeit}}
  \DeclareOption{pg}{\renewcommand{\thesistype}{Projektgruppenbericht}}
  \renewcommand{\examination}{Betreuer:}
}
\DeclareOption{english}{%
  \PassOptionsToPackage{main=english,german}{babel}
  \DeclareOption{ba}{\renewcommand{\thesistype}{Bachelor Thesis}}
  \DeclareOption{ma}{\renewcommand{\thesistype}{Master Thesis}}
  \DeclareOption{pg}{\renewcommand{\thesistype}{Projektgruppenbericht}}
  \renewcommand{\examination}{Tutor:}
}

\DeclareOption*{\PackageWarning{tudo-sse-thesis}{Unknown ‘\CurrentOption’}}
\ExecuteOptions{english,ba}
\ProcessOptions\relax

% This needs to be added for multilanguage support...
\defcaptionname{english}\abstractname{Abstract}
\defcaptionname{german}\abstractname{Zusammenfassung}

% Environments for English and German abstracts
\newenvironment{abstract}
  {\begin{otherlanguage}{english}\chapter*{\abstractname}
  \addcontentsline{toc}{chapter}{\abstractname}
  }
  {
  \end{otherlanguage}
  }

\newenvironment{abstract-ger}
  {\begin{otherlanguage}{german}\chapter*{\abstractname}
  \addcontentsline{toc}{chapter}{\abstractname}
  }
  {
  \end{otherlanguage}
  }

% Title page
\newcommand\firstexaminer[1]{\renewcommand\@firstexaminer{#1}}
\newcommand\@firstexaminer{JProf.\ Dr.-Ing.\ Ben Hermann}

\newcommand\secondexaminer[1]{\renewcommand\@secondexaminer{#1}}
\newcommand\@secondexaminer{\@latex@error{No \noexpand\secondexaminer given}\@ehc}

\newcommand\thirdexaminer[1]{\renewcommand\@thirdexaminer{#1}}
\newcommand\@thirdexaminer{\@latex@error{No \noexpand\thirdexaminer given}\@ehc}



\renewcommand*{\coverpagetopmargin}{100mm}
\renewcommand*{\coverpageleftmargin}{100mm}
\renewcommand*{\coverpagerightmargin}{0mm}
\renewcommand*{\coverpagebottommargin}{0mm}

\renewcommand*{\maketitle}[1][1]{

  \newgeometry{top=4cm,outer=3cm,inner=3cm,bottom=5cm}
  \begin{titlepage}
    \cleardoublepage
    \pagestyle{empty}

    \begin{textblock}{8}(1,11)
		\small \raggedright \noindent \sffamily
		Technische Universität Dortmund \\
		Fakultät für Informatik \\
		Informatik XI - ALGORITHM ENGINEERING \\
		Fachgruppe Computational Intelligence \\
		\url{https://ls11-www.cs.tu-dortmund.de/}
    \end{textblock}

    \centering\sffamily

    \includegraphics[width=15cm]{logos/tud_logo_cmyk.pdf}

    \vspace{0.2cm}

    {\thesistype}

    \vspace{1cm}

    {\Huge\bfseries\@title}

    \vspace{1cm}

    {\Large\@author}

    \vspace{0.5cm}

    {\large\@date}

    \vspace{2cm}

    \examination \\
    \@firstexaminer \\
    \@secondexaminer \\
    \@thirdexaminer

    \vfill

    \pagebreak


    \cleardoublepage

  \end{titlepage}
  \restoregeometry
}
