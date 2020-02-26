%% 
%% This is file `a0poster.cls'
%% 
%% Copyright (C) 2016 Joe Rowing
%%
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%% � �http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%%
%% Problems, bugs and comments to 
%% joerowing@exeterms.ac.uk
%% 

\ProvidesClass{a1poster}[2016/05/26 v1.00 a1poster class (JR)]
\NeedsTeXFormat{LaTeX2e}[1995/06/01]
\LoadClass{article}

\newif\ifportrait
\newif\ifanullb
\newif\ifanull
\newif\ifaone
\newif\ifatwo
\newif\ifathree
\newif\ifposterdraft

\newcount\xkoord
\newcount\ykoord
\newcount\xscale
\newcount\yscale

\DeclareOption{a0b}{
\anullbtrue
\xkoord=2594 % big points (1 bp=1/72 inch)
\ykoord=3370 % big points (1 bp=1/72 inch)
\xscale=2
\yscale=2
}
\DeclareOption{a0}{
\anulltrue\anullbfalse
\xkoord=2380 % big points (1 bp=1/72 inch)
\ykoord=3368 % big points (1 bp=1/72 inch)
\xscale=2
\yscale=2
}
\DeclareOption{a1}{
\aonetrue\anullbfalse
\xkoord=1684 % big points (1 bp=1/72 inch)
\ykoord=2380 % big points (1 bp=1/72 inch)
\xscale=3
\yscale=3
}
\DeclareOption{a2}{
\atwotrue\anullbfalse
\xkoord=1190 % big points (1 bp=1/72 inch)
\ykoord=1684 % big points (1 bp=1/72 inch)
\xscale=4
\yscale=4

}
\DeclareOption{a3}{
\athreetrue\anullbfalse
\xkoord=842  % big points (1 bp=1/72 inch)
\ykoord=1190 % big points (1 bp=1/72 inch)
\xscale=6
\yscale=6
}
\DeclareOption{landscape}{
\portraitfalse
}
\DeclareOption{portrait}{
\portraittrue
}
\DeclareOption{draft}{   %% Just for downward compatibility
\posterdrafttrue
}
\DeclareOption{posterdraft}{ %% To avoid collisions with the graphics package
\posterdrafttrue
}
\DeclareOption{final}{
\posterdraftfalse
}
\DeclareOption*{\PackageWarning{a1poster}{Unknown Option \CurrentOption}}
\ExecuteOptions{landscape,a1,final}
\ProcessOptions\relax

\ifanullb
   \setlength{\paperwidth}{119cm}
   \setlength{\paperheight}{87cm}
   \setlength{\textwidth}{114cm}
   \setlength{\textheight}{87cm}
\else\ifanull
        \setlength{\paperwidth}{118.82cm}
        \setlength{\paperheight}{83.96cm}
        \setlength{\textwidth}{114.82cm}
        \setlength{\textheight}{79.96cm}
     \else\ifaone
             \setlength{\paperwidth}{83.96cm}
             \setlength{\paperheight}{59.4cm}
             \setlength{\textwidth}{79.96cm}
             \setlength{\textheight}{55.4cm}
          \else\ifatwo
                  \setlength{\paperwidth}{59.4cm}
                  \setlength{\paperheight}{41.98cm}
                  \setlength{\textwidth}{55.4cm}
                  \setlength{\textheight}{37.98cm}
               \else\ifathree
                       \setlength{\paperwidth}{41.98cm}
                       \setlength{\paperheight}{29.7cm}
                       \setlength{\textwidth}{37.98cm}
                       \setlength{\textheight}{25.7cm}
                    \else\relax
                    \fi
               \fi
          \fi
     \fi
\fi


\ifportrait
   \newdimen\swap
   \setlength{\swap}{\paperwidth}
   \setlength{\paperwidth}{\paperheight}
   \setlength{\paperheight}{\swap}
   \setlength{\swap}{\textwidth}
   \setlength{\textwidth}{\textheight}
   \setlength{\textheight}{\swap}
\else\relax
\fi

%% Setting proper dimensions for a DIN A0 printer

\setlength{\headheight}{0 cm}
\setlength{\headsep}{0 cm}
\setlength{\topmargin}{0 cm}
\setlength{\oddsidemargin}{0 cm}

\catcode`\%=11
\newwrite\Output
\immediate\openout\Output=a0header.ps
\write\Output{%%BeginFeature *PageSize ISOA0/ISO A0}
\ifposterdraft\write\Output{2 dict dup /PageSize [595 842] put dup /ImagingBBox null put}
\else\write\Output{2 dict dup /PageSize [\number\xkoord\space \number\ykoord] put dup /ImagingBBox null put}\fi
\write\Output{setpagedevice}
\ifposterdraft\write\Output{38 84 translate}
\write\Output{0.\number\xscale\space 0.\number\yscale\space scale}\else\relax\fi
\write\Output{%%EndFeature}
\closeout\Output
\catcode`\%=14

\special{header=./a0header.ps}

\input{a0size.sty}

\renewcommand{\tiny}{\fontsize{8}{10}\selectfont}
\renewcommand{\scriptsize}{\fontsize{9}{11}\selectfont}   
\renewcommand{\footnotesize}{\fontsize{10}{12}\selectfont}
\renewcommand{\small}{\fontsize{10}{12}\selectfont}
\renewcommand{\normalsize}{\fontsize{14.88}{18}\selectfont}
\renewcommand{\large}{\fontsize{18.86}{22}\selectfont}
\renewcommand{\Large}{\fontsize{25.83}{35}\selectfont}
\renewcommand{\LARGE}{\fontsize{30}{44}\selectfont}
\renewcommand{\huge}{\fontsize{41.6}{54}\selectfont}
\renewcommand{\Huge}{\fontsize{61.92}{77}\selectfont}
\newcommand{\veryHuge}{\fontsize{74.3}{93}\selectfont}
\newcommand{\VeryHuge}{\fontsize{89.16}{112}\selectfont}
\newcommand{\VERYHuge}{\fontsize{107}{134}\selectfont}

\setlength\smallskipamount{6pt plus 2pt minus 2pt}
\setlength\medskipamount{12pt plus 4pt minus 4pt}
\setlength\bigskipamount{24pt plus 8pt minus 8pt}

\setlength\abovecaptionskip{14pt}
\setlength\belowcaptionskip{0pt}
\setlength\abovedisplayskip{25pt plus 6pt minus 15 pt}
\setlength\abovedisplayshortskip{0pt plus 6pt}
\setlength\belowdisplayshortskip{13pt plus 7pt minus 6pt}
\setlength\belowdisplayskip\abovedisplayskip

\normalsize

\AtBeginDocument{
\ifanullb
   \ifportrait\special{papersize=91.51cm,120cm}\else\special{papersize=120cm,91.51cm}\fi
\else\ifanull
        \ifportrait\special{papersize=83.96cm,118.82cm}\else\special{papersize=118.82cm,83.96cm}\fi
     \else\ifaone
             \ifportrait\special{papersize=59.4cm,83.96cm}\else\special{papersize=83.96cm,59.4cm}\fi
          \else\ifatwo
                  \ifportrait\special{papersize=41.98cm,59.4cm}\else\special{papersize=59.4cm,41.98cm}\fi
               \else\ifathree
                      \ifposterdraft
                       \ifportrait\special{papersize=29.7cm,41.35cm}\else\special{papersize=41.98cm,29.0cm}\fi
                      \else
                       \ifportrait\special{papersize=29.7cm,41.98cm}\else\special{papersize=41.98cm,29.7cm}\fi
                      \fi
                    \else\relax
                    \fi
               \fi
          \fi
     \fi
\fi
\pagestyle{empty}}

\endinput
%% 
%% End of file `a0poster.cls'.
