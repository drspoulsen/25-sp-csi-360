\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wc_wksh}[01/01/2017 Washington College Worksheet class]

\LoadClass[12pt]{article}
\RequirePackage{fullpage}
\RequirePackage{amsmath}
\RequirePackage[framed, hyperref]{ntheorem}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{hyperref}
\RequirePackage{framed}
\RequirePackage{parskip}
\RequirePackage[capitalize, nameinlink]{cleveref}
\RequirePackage[usenames, table, dvipsnames]{xcolor}
\RequirePackage{tikz}
\RequirePackage[some]{background}
\RequirePackage[autostyle=false, style=english]{csquotes}
\RequirePackage{ifthen}

\theoremstyle{plain}
\theoremheaderfont{\normalfont\bfseries}
\theorembodyfont{\normalfont}
\newtheorem{theorem}{Theorem}
\newtheorem{lemma}[theorem]{Lemma}
\newtheorem{corollary}[theorem]{Corollary}
\newframedtheorem{definition}[theorem]{Definition}
\newtheorem{remark}[theorem]{Remark}
\newframedtheorem{fremark}[theorem]{Remark}
\newframedtheorem{fact}[theorem]{Fact}
\newtheorem{question}[theorem]{Question}
\newtheorem{example}{Example}
\newframedtheorem{fexample}[example]{Example}
\newframedtheorem{ftheorem}[theorem]{Theorem}

\DeclareOption{instructor}{}
\ProcessOptions\relax

\MakeOuterQuote{"} % This converts " to a left double quote so we don't have to type `` for that character.

\hypersetup{colorlinks=true,linkcolor=blue}
\urlstyle{same}



\setlength\FrameRule{1.5pt}

\newcommand\atHome{%
  \definecolor{myColor}{RGB}{173, 204, 255}
  \backgroundsetup{pages=some, contents=, scale=7, color=myColor}
  \BgThispage
  \tikz[remember picture, overlay] {%
  \draw [myColor,line width=1.75in, rounded corners=1in]
  (current page.south west)
  rectangle
  (current page.north east)
  ;}
}

\newcommand\ds{\displaystyle}
\newcommand\dydx{\frac{dy}{dx}}

\newcommand\studentInstructions{%
  \vfill
  \hrule
  \medskip
  \textbf{Directions:} Complete the activity on the \textit{first} shaded (blue) page(s) before class. In class, we will work on the remaining pages.
  \medskip
  \hrule
}

\input{wc_graph.def}

\endinput
