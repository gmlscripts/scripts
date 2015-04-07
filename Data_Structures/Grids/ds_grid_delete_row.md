ds_grid_delete_row
==================

Deletes from a grid the row at a given row
index. The grid is reduced in height by one.

$$\mathbf{G} = \begin{array}{|c|c|c|c|}
\hline 00&10&20&30
\\\hline 01&11&21&31
\\\hline \color{red}{02}&\color{red}{12}&\color{red}{22}&\color{red}{32}
\\\hline 03&13&23&33
\\\hline \end{array}
\qquad
f(\mathbf{G},2) = \begin{array}{|c|c|c|c|}
\hline 00&10&20&30
\\\hline 01&11&21&31
\\\hline 03&13&23&33
\\\hline \end{array}$$

Warning: Attempting to delete a row from a grid
with only one row will generate an error.

script: ds_grid_delete_row.gml

contributors: xot
