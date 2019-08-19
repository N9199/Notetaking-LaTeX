\RequirePackage {expl3}
\ProvidesExplClass{homework}{2019/07/28}{0.0.1}{ Template for math homework }

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
                        Facultad de Matemáticas\\
                        Departamento de Matemática}\smallskip \\
                    %\thegdate\\
                }
            \end{flushleft}
        \end{minipage}
        \begin{flushright}
            Ayudante: Nicholas Mc-Donnell\\
            Email: \url{namcdonnell@uc.cl}
        \end{flushright}
        \vspace{2ex}

        {\Large \centerline{\bf \thetitle}}
        {\large \centerline{\thecourse}}
        \centerline{Fecha: \thedate}
    }
}