(define (tan-cf x k)
	(define (N i)
		(if (= i 1)
			x
			(* x x)
		)
	)

	(define (D i)
		(- (* 2 i) 1)
	)

	(define (cf i)
		(if (= i k)
			(/ (N i) (D i))
			(/ (N i) (- (D i) (cf (+ i 1))))
		)
	)
	(exact->inexact (cf 1))
)

