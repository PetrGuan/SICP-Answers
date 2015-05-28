(define (product term a next b)
	(if (> a b)
		1
		(* (term a) (product term (next a) next b))
	)
)

Above is recursive one.
----------------------------------------------------------

(define (product term a next b)
    (define (iter a result)
        (if (> a b)
            result
            (iter (+ a 1)
                  (* (term a) result))))
    (iter a 1))

This is iterative one.

-----------------------------------------------------------


(define (pi a b)
	(define (term x) 
	(cond ((= x 2) 2)
		(else (* x x))
	)
)
	(define (next x) (+ x 2))

	(* 4 (/ (product term a next b) (product term (+ a 1) next (- b 1)) b) )
)

even = 2 * 4^2 * 6^2 * .... n^2
odd = 3 * 5^2 * 7^2 ... (n-1)^2

You could use either of the 'Product' Procedure.