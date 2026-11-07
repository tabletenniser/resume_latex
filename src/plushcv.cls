\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{plushcv}[2026/10/26 Single-column resume]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
% Allow fractional font sizes when vertically centering the company headings.
\RequirePackage{fix-cm}
\LoadClass[letterpaper,10pt]{article}

\usepackage[margin=0.5in]{geometry}
\usepackage{fontspec}
\usepackage{graphicx}
% TeX Gyre is included in standard TeX distributions and Tectonic's bundle.
% Avoid dependencies on untracked font files or machine-specific fonts.
\setmainfont{texgyreheros}[
  Extension=.otf,
  UprightFont=*-regular,
  BoldFont=*-bold,
  ItalicFont=*-italic,
  BoldItalicFont=*-bolditalic
]
\usepackage[dvipsnames]{xcolor}
\definecolor{title}{HTML}{1D76E2}
\definecolor{primary}{HTML}{2B2B2B}
\definecolor{secondary}{HTML}{555555}
\usepackage[colorlinks=true,allcolors=title]{hyperref}
\usepackage{enumitem}
\usepackage{titlesec}

\setlength{\parindent}{0pt}
\setlength{\parskip}{0pt}
\renewcommand{\normalsize}{\@setfontsize\normalsize{10.5pt}{13.5pt}}
\AtBeginDocument{\normalsize\color{primary}\raggedright}

\newcommand{\namesection}[5][]{%
  \begingroup\centering
  {\color{title}\fontsize{36pt}{40pt}\selectfont\bfseries #2 #3\par}
  \vspace{4pt}
  {\fontsize{12pt}{14pt}\selectfont #4\par}
  \vspace{5pt}
  {\fontsize{10pt}{12.5pt}\selectfont #5\par}
  \endgroup
  \vspace{7pt}
  {\color{title}\hrule height 0.4pt}
  \vspace{12pt}
}

\newcommand{\contacticon}[1]{%
  \raisebox{-0.25\height}{\includegraphics[height=15pt]{icons/main/#1.png}}\hspace{3pt}%
}
\newcommand{\contactline}[4]{%
  \contacticon{mail}#1\hspace{8pt}\contacticon{phone}#2\hspace{8pt}%
  \contacticon{github}#3\hspace{8pt}\contacticon{linkedin}#4%
}
\newcommand{\companyheading}[4]{%
  \noindent\begin{minipage}[c]{26pt}
    \includegraphics[width=26pt,height=26pt,keepaspectratio]{#1}%
  \end{minipage}\hspace{6pt}%
  \begin{minipage}[c]{\dimexpr\linewidth-32pt\relax}
    \runsubsection{#2}\hspace{4pt}\descript{| #3}%
    \location{#4}%
  \end{minipage}\par
}

\titleformat{\section}
  {\color{title}\fontsize{14.5pt}{17pt}\selectfont\bfseries}
  {}{0pt}{}
\titlespacing*{\section}{0pt}{11pt}{6pt}

\newcommand{\runsubsection}[1]{%
  {\fontsize{12.5pt}{14.5pt}\selectfont\bfseries #1}%
}
\newcommand{\descript}[1]{%
  {\fontsize{12pt}{14.5pt}\selectfont #1\par}%
}
\newcommand{\location}[1]{%
  {\color{secondary}\fontsize{10pt}{12pt}\selectfont #1\par}%
}
\newcommand{\sectionsep}{\par\vspace{3pt}}

\newenvironment{tightemize}
  {\begin{itemize}[leftmargin=1.25em,label=\textbullet,
    topsep=4pt,itemsep=3pt,parsep=0pt,partopsep=0pt]}
  {\end{itemize}}
