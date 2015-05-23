(+ 4 5)
(inc (+ 3 5))
(inc inc(+ 2 5))
(inc inc inc(+ 1 5))
(inc inc inc inc(+ 0 5))
9

the first one uses linear recurstion.

(+ 4 5)
(+ 3 6)
(+ 2 7)
(+ 1 8)
(+ 0 9)
9

the second one uses linear iterative.