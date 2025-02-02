\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wc_hw}[2017/01/01 Washington College Homework class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions\relax
\LoadClass[12pt, times]{exam}

\RequirePackage{fullpage}
\RequirePackage{amsmath}
\RequirePackage[framed, hyperref]{ntheorem}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{hyperref}
\RequirePackage{parskip}
\RequirePackage[capitalize, nameinlink]{cleveref}
\RequirePackage[usenames, table, dvipsnames]{xcolor}
\RequirePackage{tikz}
\RequirePackage[some]{background}
\RequirePackage[autostyle=false, style=english]{csquotes}
\RequirePackage{ifthen}
\RequirePackage{pgfplots}

\MakeOuterQuote{"} % This converts " to a left double quote so we don't have to type `` for that character.

\pgfplotsset{compat=1.7}

\setlength\FrameRule{1.5pt}

\newcommand\ds{\displaystyle}
\newcommand\dydx{\frac{dy}{dx}}

\newcommand\hwtitle[1]{%
  \setlength\FrameRule{1.5pt}
  \begin{framed}
    \begin{center}
      \begin{large}
      \textbf{Differential Calculus}\\
      \textbf{Practice Exercises}\\
      \end{large}
      \smallskip
      \textbf{\textit{#1}}
      \smallskip
    \end{center}
    \hrule height 1.7pt

    In order to gain a solid understanding of the concepts of calculus, you must
    work as many examples as possible. Work these as soon as possible, even before
    the section is completed in class. Bring your questions to class or to office
    hours. Your questions are a valuable contribution to class time, and they are
    critical for your own growth and self-diagnosis.
    \smallskip

    These exercises and/or similar other exercises can be found in our textbook.
  \end{framed}
}

\input{wc_graph.def}

\endinput
