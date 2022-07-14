ds_grid_mirror
==============

Rearranges the elements of a given grid by mirroring
horizontally and/or vertically.

$$\mathbf{G} = \begin{array}{|c|c|}
\hline \color{red}A&B
\\\hline C&D
\\\hline E&\color{blue}F
\\\hline \end{array}
\qquad
f(\mathbf{G},1,0) = \begin{array}{|c|c|}
\hline B&\color{red}A
\\\hline D&C
\\\hline \color{blue}F&E
\\\hline \end{array}
\qquad
f(\mathbf{G},0,1) = \begin{array}{|c|c|}
\hline E&\color{blue}F
\\\hline C&D
\\\hline \color{red}A&B
\\\hline \end{array}
\qquad
f(\mathbf{G},1,1) = \begin{array}{|c|c|}
\hline\color{blue}F&E
\\\hline D&C
\\\hline B&\color{red}A
\\\hline \end{array}$$

Note: Mirroring a grid both horizontally and vertically is the same
as rotating it 180 degrees.

script: ds_grid_mirror.gml

contributors: Leif902, xot
