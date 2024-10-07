\ProvidesClass{scrcv}[2016/06/22 a CV class unsing KOMA Script]
\NeedsTeXFormat{LaTeX2e}

\RequirePackage{kvoptions}

\SetupKeyvalOptions{
  family = scrcv,
  prefix = scrcv@
}

\DeclareStringOption[a4]{paper}
\DeclareStringOption[11pt]{fontsize}
\DeclareStringOption[normal]{headings}
\DeclareStringOption[half-]{parskip}

\DeclareDefaultOption{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessKeyvalOptions{scrcv}
\PassOptionsToClass{paper=\scrcv@paper}{scrartcl}
\PassOptionsToClass{fontsize=\scrcv@fontsize}{scrartcl}
\PassOptionsToClass{parskip=\scrcv@parskip}{scrartcl}
\PassOptionsToClass{headings=\scrcv@headings}{scrartcl}
\LoadClass{scrartcl}

\RequirePackage{hyperref}
\RequirePackage{graphicx}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% page setup                                                                 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[left=5.3cm,top=2cm,right=1.8cm,bottom=2.4cm,nohead,nofoot]{geometry}

\RequirePackage{scrlayer-scrpage}
\clearscrheadings
\ifoot{\hspace{5.1cm}\pagemark}
\pagestyle{scrheadings}
\setlength{\footskip}{1.4cm}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Fonts                                                                      %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{lmodern}
\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[protrusion,expansion,tracking,kerning,spacing]{microtype}

\newcommand{\bodyfont}{\rmfamily\mdseries}
\newcommand{\datefont}{\normalsize\sffamily\mdseries}
%\newcommand{\headingfont}{\sffamily\fontseries{sbc}\selectfont}
\newcommand{\headingfont}{\sffamily\bfseries}
\newcommand{\thinfont}{\sffamily}
\newcommand{\thickfont}{\sffamily\bfseries}

\renewcommand\ttdefault{lmvtt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Colors                                                                               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{xcolor}

\definecolor{white}{RGB}{255,255,255}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{4D4D4D}
\definecolor{lightgray}{HTML}{999999}

% \definecolor{green}{HTML}{C2E15F}
% \definecolor{orange}{HTML}{FDA333}
% \definecolor{purple}{HTML}{D3A4F9}
% \definecolor{red}{HTML}{FB4485}
% \definecolor{blue}{HTML}{6CE0F1}

% \ifdefined\@cv@print
%   \colorlet{green}{gray}
%   \colorlet{orange}{gray}
%   \colorlet{purple}{gray}
%   \colorlet{brown}{gray}
%   \colorlet{red}{gray}
%   \colorlet{blue}{gray}
%   \colorlet{fillheader}{white}
%   \colorlet{header}{gray}
% \else
%   \colorlet{fillheader}{gray}
%   \colorlet{header}{white}
% \fi

\colorlet{fillheader}{white}
\colorlet{header}{gray}
\colorlet{textcolor}{darkgray}
\colorlet{headercolor}{gray}
\color{textcolor}

% \ifdefined\@cv@nocolors
%   \colorlet{green}{gray}
%   \colorlet{rdfgreen}{gray}
%   \colorlet{orange}{gray}
%   \colorlet{rdforange}{gray}
%   \colorlet{purple}{gray}
%   \colorlet{rdfpurple}{gray}
%   \colorlet{brown}{gray}
%   \colorlet{red}{gray}
%   \colorlet{blue}{gray}
% \fi


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Header                                                                               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{tikz}

\newcommand{\header}[3]{%
  \begin{tikzpicture}[remember picture,overlay]
    \node [rectangle, fill=fillheader, anchor=north, minimum width=\paperwidth, minimum height=4cm] (box) at (current page.north){};
    \node [anchor=center] (name) at (box) {%
      \fontsize{40}{48}\selectfont\color{header}%
      {\thinfont #1}\,{\thickfont #2}
    };
    \node [anchor=north] at (name.south) {%
      \Large\color{header}%
      \thinfont #3%
    };
  \end{tikzpicture}
  \vspace{1.7cm}
  %\vspace{2.5cm}
  %\vspace{-2\parskip}
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Structure                                                                               %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\setcounter{secnumdepth}{0}

\renewcommand{\section}[1]{
  \vspace{2\parskip}
  {\LARGE\headingfont\textcolor{headercolor}{#1}}%
  %\vspace{.25\parskip}
}

% \renewcommand{\section}[1]{
%   \par\vspace{\parskip}
%   {%
%     \LARGE\headingfont\color{headercolor}%
%     \@sectioncolor #1%
%   }
%   \par\vspace{\parskip}
% }

% \renewcommand{\subsection}[1]{
%   \par\vspace{.5\parskip}%
%   {\Large\headingfont\color{headercolor} #1}
%   \par\vspace{.25\parskip}%
% }

% \renewcommand{\subsubsection}[2]{
%   \par\vspace{.5\parskip}%
%   {\Large\headingfont\color{headercolor} #2}
%   \par\vspace{.25\parskip}%
% }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Entrylist                                                                  %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{enumitem}

\SetEnumitemKey{entrylist}{topsep=0pt, itemsep=\parskip, labelindent=0cm, labelsep=0pt, leftmargin=2.9cm, rightmargin=0pt, style=nextline, font=\datefont, align=left, listparindent=0cm, partopsep=0cm, parsep=0cm}
\SetEnumitemKey{itemizedentry}{topsep=0.5ex, leftmargin=1em, labelindent=0cm, partopsep=0cm, labelsep=.47em, itemsep=0.6ex, parsep=0cm, label=\textcolor{lightgray}{\textbullet}}

\newcommand{\entryhead}[2]{{\headingfont\textcolor{headercolor}{#1}} \hfill {\footnotesize\color{lightgray}\thinfont #2}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Side block                                                                 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\RequirePackage[absolute,overlay]{textpos}

\newlength{\oldparskip}
\setlength{\oldparskip}{\parskip}
\setlength{\TPHorizModule}{1cm}
\setlength{\TPVertModule}{1cm}

\newenvironment{aside}[1]{%
  \setlength{\parskip}{1ex}
  \let\oldsection\section
  \renewcommand{\section}[1]{%
    \vspace{4\parskip}%
    \textcolor{headercolor}{\LARGE\headingfont ##1}%
    \par%
  }
  \begin{textblock}{3.3}(1.4, #1)
  \begin{flushright}
}{%
  \end{flushright}
  \end{textblock}
  \setlength{\parskip}{\oldparskip}
  \let\section\oldsection
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SIgnature                                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\cvsignature}[2]{
  \vspace{2cm plus 1cm minus 1cm} 
  \begin{center}
  #1 \hspace{0.7cm} #2
  \end{center}
}
