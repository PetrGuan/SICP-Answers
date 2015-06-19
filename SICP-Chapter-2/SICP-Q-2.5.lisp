(define (cons a b)
	(* (expt 2 a) (expt 3 b))
)

(define (car n)
	(if (= (remainder n 2) 0)
		(+ 1 (car (/ n 2)))
		0
	)
)

(define (cdr n)
	(if (= (remainder n 3) 0)
		(+ 1 (cdr (/ n 3)))
		0
	)
)