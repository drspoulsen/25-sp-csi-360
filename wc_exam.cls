\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wc_exam}[01/01/2017 Washington College Test class]

% Passes and class options to the underlying article class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{exam}}
\ProcessOptions

\LoadClass[12pt, addpoints]{exam}



\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{mathtools}
\RequirePackage{times}
\RequirePackage[usenames, table, dvipsnames]{xcolor}
\RequirePackage{tikz}
\RequirePackage[autostyle=false, style=english]{csquotes}
\RequirePackage{ifthen}
\MakeOuterQuote{"} % This converts " to a left double quote so we don't have to type `` for that character.

% Variables
\def\courseNumber#1{\def\@courseNumber{#1}}
\def\sectionNumber#1{\def\@sectionNumber{#1}}
\def\courseTitle#1{\def\@courseTitle{#1}}
\def\instructor#1{\def\@instructor{#1}}
\def\examDate#1{\def\@examDate{#1}}
\def\examNumber#1{\def\@examNumber{#1}}
\def\shortDate#1{\def\@shortDate{#1}}

\shadedsolutions
\footer{}{}{\thepage}
\pointsinmargin
\boxedpoints

\DeclareOption{instructor}{}
\ProcessOptions\relax
\newcommand\ds{\displaystyle}
\newcommand\dydx{\frac{dy}{dx}}

\newcommand\setHeader{%
  \header{\@courseNumber\ -- \@sectionNumber}{\@examNumber}{\@shortDate}
}

\newcommand\titleBlock{%
  \fboxrule=1.5pt
  \thispagestyle{empty}
  \begin{center}
    \section*{\@courseTitle\ -- \@examNumber}
    \textbf{\@courseNumber\ -- \@sectionNumber}\\
    \@examDate\\
    \@instructor\\
    \textbf{Out of \numpoints\ points.}
  \end{center}

  \smallskip
  \noindent
  \fbox{
    \begin{minipage}{6.2in}
    \noindent{\bf Print your name:}
    \hfill\vspace{.55in}
    \end{minipage}
  }
}

\newcommand\examInstructions{%
  \fboxrule=1.5pt
  \subsection*{Instructions:}
  \textbf{Check} each of the boxes to show you have read the instruction.
  \renewcommand\labelitemi{$\square$}
  \begin{itemize}
    \item I understand I must only use techniques and methods consistent with those discussed in class. I will ask if I want to use another technique.
    \item  I understand the correct answer to any question is a description of a process that results in the desired information. I understand that the \textbf{process} is more important than the final number!
    \item I understand that my grade will reflect correct use of notation as well as correct work.
    \item I understand I can ask for clarification if I do not understand the question.
    \item Remember to \textbf{breathe!}
  \end{itemize}
}

\newcommand\honorCode{%
  \fboxrule=1.5pt
  \begin{center}
    \section*{Washington College Honor Code}
    {\Large \textit{I pledge my word of honor that I have abided by the Washington College Honor Code while completing this assignment.}}
  \end{center}

  \smallskip
  \noindent
  \fbox{
    \begin{minipage}{6.2in}
    \noindent\textbf{Write the Honor Code:}
    \hfill\vspace{1in}
    \end{minipage}
  }

  \bigskip
  \noindent
  \fbox{
    \begin{minipage}{6.2in}
    \noindent\textbf{Sign your name:}
    \hfill\vspace{.5in}
    \end{minipage}
  }
  \fboxrule=.5pt
}

% Add support for graphs
\input{wc_graph.def}

\endinput
