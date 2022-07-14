ds_grid_translate
=================

Shifts the contents of a grid by a given number of rows
and columns. The contents are shifted so that they wrap
around to the opposite side of the grid data structure.

$$\mathbf{G} = \begin{array}{|c|c|c|c|}
\hline \color{red}A & \color{blue}B & \color{blue}C & \color{blue}D
\\\hline \color{blue}E & F & G & H
\\\hline \color{blue}I & J & K & L
\\\hline \color{blue}M & N & O & P
\\\hline \end{array}
\qquad
f(\mathbf{G},1,2) = \begin{array}{|c|c|c|c|}
\hline L & \color{blue}I & J & K
\\\hline P & \color{blue}M & N & O
\\\hline \color{blue}D & \color{red}A & \color{blue}B & \color{blue}C
\\\hline H & \color{blue}E & F & G
\\\hline \end{array}$$

script: ds_grid_translate.gml

contributors: Leif902, xot
