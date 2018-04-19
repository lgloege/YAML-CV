\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{my_cv}[2017/12/27 My custom CV class]

% Base class on article
\LoadClass{article}

% So can customize section headings
\RequirePackage{titlesec}

% For bibliography
\usepackage{bibentry}

% For columns to align top
%\usepackage{adjustbox}
% use: \adjustbox{valign=t}{\begin{minipage}[t]{0.2\textwidth} \end{minipage}}%

% Sets margins
\RequirePackage{geometry}
\geometry{
    paper=letterpaper,  % paper : letterpaper (US) or a4paper (uk)
    left      = 1in,        % Inner margin
    right     = 1in,          % Outer margin
    top       = 0.75in,         % Top margin
    bottom    = 1in,         % Bottom margin
    marginpar = 0in,
 %   bindingoffset=.5cm, % Binding offset
 %   showframe,          % Uncomment to show how the type block is set on the page
}

% Name
\newcommand{\name}[1]{
  \centerline{\Huge{#1}}
}

% Contact
\newcommand{\contact}[5]{
\centerline{
    #1 {\large\textperiodcentered} #2 {\large\textperiodcentered} #3
    {\Large} #4 \ {\Large} #5
    }
}

% Custom section
\titleformat{\section}         % Customise the \section command
  {\Large\scshape\raggedright} % Make the \section headers large (\Large),
                               % small capitals (\scshape) and left aligned (\raggedright)
  {}{0em}                      % Can be used to give a prefix to all sections, like 'Section ...'
  {}                           % Can be used to insert code before the heading
  [\titlerule]                 % Inserts a horizontal line after the heading

% Custom subsection
\titleformat{\subsection}
  {\large\scshape\raggedright}
  {}{0em}
  {}

% Dated section
\newcommand{\datedsection}[2]{%
\section[#1]{#1 \hfill #2}%
}

% Dated subsection
\newcommand{\datedsubsection}[2]{%
  \subsection[#1]{#1 \hfill #2}%
}


\newcommand{\twocols}[2]{

\begin{center}
\begin{minipage}[t]{0.2\textwidth}
\raggedright
#1
\end{minipage}%
\begin{minipage}[t]{0.8\textwidth}
\raggedright
#2
\end{minipage}%
\end{center}

}

% Three columns
\newcommand{\threecols}[3]{

\begin{center}
\begin{minipage}[t]{0.2\textwidth}
\raggedright
#1
\end{minipage}%
\begin{minipage}[t]{0.6\textwidth}
%\centering
\raggedright
#2
\end{minipage}%
\begin{minipage}[t]{0.2\textwidth}
\raggedleft
#3
\end{minipage}
\end{center}

}
