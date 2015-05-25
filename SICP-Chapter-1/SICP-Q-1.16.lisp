(define (expt b n)
	(if (= n 0)
		1
		(* b (expt b (- n 1)))
	)
)

(define (expt b n )
	(expt-iter b n 1)
)

(define (expt-iter b n product)
	(if (= n 0)
		product
		(expt-iter b (- n 1) (* product b))
	)
)

(define (fast-expt b n)
	(cond ((= n 0) 1)
		  ((even? n) (square (fast-expt b (/ n 2))))
		  (else (* b (fast-expt b (- n 1))))
	)
)

-------------------------------------------------------

answer is below...

(define (fast-expt b n)
    (expt-iter b n 1))

(define (expt-iter b n a)
    (cond ((= n 0)
            a)
          ((even? n)
            (expt-iter (square b)
                       (/ n 2)
                       a))
          ((odd? n)
            (expt-iter b
                       (- n 1)
                       (* b a)))))