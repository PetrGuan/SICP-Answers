applicative-order

(gcd 206 40)
(gcd 40 6)      ; (gcd 40 (remainder 206 40)
(gcd 6 4)       ; (gcd 6 (remainder 40 6))
(gcd 4 2)       ; (gcd 4 (remainder 6 4))
(gcd 2 0)       ; (gcd 2 (remainder 2 2))
2

----------------------------------------------------------------------

(gcd 206 40)

(gcd 40 (remainder 206 40)) ; a = 40, b = 6, t1 = (remainder 206 40)

(if (= t1 0) ...)   ; #f

(gcd t1 (remainder 40 t1))  ; a = 6, b = 4, t2 = (remainder 40 t1)

(if (= t2 0) ...)   ; #f

(gcd t2 (remainder t1 t2))  ; a = 4, b = 2, t3 = (remainder t1 t2)

(if (= t3 0) ...)   ; #f

(gcd t3 (remainder t2 t3))  ; a = 2, b = 0, t4 = (remainder t2 t3)

(if (= t4 0) ...)   ; #t

t3

(remainder t1 t2)

(remainder t1
           (remainder 40 t1))   ; t2

(remainder t1
           (remainder 40
                      (remainder 206 40)))    ; t1

(remainder t1
           (remainder 40 6))

(remainder t1 4)

(remainder (remainder 206 40)   ; t1
           4)

(remainder 6 4)

2