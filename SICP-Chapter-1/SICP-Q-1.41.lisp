(define (double f)
	(lambda (x)
		(f (f x))
	)
)

------------------------------------

or

(define ((double f) x)
	(f (f x))
)