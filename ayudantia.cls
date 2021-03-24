\RequirePackage {expl3}
\ProvidesExplClass{ayudantia}{2020/08/17}{0.0.3}{ Class }

\ExplSyntaxOn

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Class / Package options
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Provides class / package option processing of l3keys in LaTeX2e
\RequirePackage {l3keys2e}

% Re Do so it works as intended
\tl_new:N \c_notetaking_authors_tl

\keys_define:nn{notetaking / options}
{
    group .code:n =
      {
        \tl_gset:N \c_notetaking_authors_tl {Integrantes:\\}
      },
    group .value_forbidden:n = true,
}

\ProcessKeysOptions{notetaking / options}

\LoadClass[12pt,letterpaper]{article}

\RequirePackage{notetaking}

\ExplSyntaxOff

\setlist[enumerate]{label= \arabic*)}
\pagenumbering{gobble}

\renewcommand{\maketitle}{
    {
        \begin{minipage}{2.5cm}
            \includegraphics[scale=0.25]{img/puc}
        \end{minipage}
        \begin{minipage}{13cm}
            \begin{flushleft}
                \raggedright
                {\noindent
                    {\sc Pontificia Universidad Católica de Chile\\
                    \thefaculty\\
                    \thedepartment\\
                    }
                }
            \end{flushleft}
        \end{minipage}
        \begin{flushright}
            Ayudante: Nicholas Mc-Donnell\\
            Email: \url{namcdonnell@uc.cl}
        \end{flushright}
        \vspace{2ex}

        {\LARGE \centerline{\bf \thetitle}}
        {\Large \centerline{\thesubtitle}}
        {\large \centerline{\thecourse}}
        \centerline{Fecha: \thedate}
    }
}