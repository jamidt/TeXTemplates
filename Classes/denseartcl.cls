\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{denseartcl}[2017/12/06 Densely written article class]

\newif\if@draftmode
\DeclareOption{draft}{%
    \@draftmodetrue
    \PassOptionsToPackage{showframe}{geometry}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{scrartcl}}
\ProcessOptions\relax

\LoadClass[10pt]{scrartcl}

\RequirePackage[top=1.5cm, left=1.5cm, right=1.5cm, bottom=1.5cm]{geometry}

\RequirePackage[yyyymmdd]{datetime}
\renewcommand{\dateseparator}{-}

% Header over each page
\RequirePackage[headsepline=0.4pt]{scrlayer-scrpage}
\clearpairofpagestyles
\ihead{\today,~\currenttime}
\ohead{\pagemark}

\RequirePackage{hyperref}
\RequirePackage{cleveref}
\hypersetup{colorlinks=false}

\setcounter{tocdepth}{1}

\if@draftmode
    %\RequirePackage{showframe}
\fi
