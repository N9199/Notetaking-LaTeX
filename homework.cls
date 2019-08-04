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

\renewcommand{\maketitle}{
    \begin{titlepage}
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
        \vspace{2ex}

        {\Large \centerline{\bf \thetitle}}
        {\large \centerline{Fundamentos de la Matemática - MAT 2405}}
        \centerline{Fecha de Entrega: \thedate}
        \vfill

        \begin{flushright}
            {\Large\theauthor}% Part of the redo
        \end{flushright}

    \end{titlepage}
}