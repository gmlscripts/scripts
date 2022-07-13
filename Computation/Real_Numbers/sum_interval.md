sum_interval
============

Returns the sum of consecutive integers between m and n (inclusive).

$$\sum _{i\mathop {=} m}^{n}a_{i}=a_{m}+a_{m+1}+a_{m+2}+\cdots +a_{n-1}+a_{n}$$

    s = sum_interval(1, 5);     //  1 + 2 + 3 + 4 + 5 == 15
    s = sum_interval(50, 100);  //  50 + 51 + ... + 100 == 3825
    s = sum_interval(-5, 5);    //  (-5) + (-4) + ... + 4 + 5 == 0

script: sum_interval.gml

contributors: xot
