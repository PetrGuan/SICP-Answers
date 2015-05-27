(define (sum term a next b)
	(define (iter a result)
		(if (> a b)
			result
			(iter (next a) (+ (term a) result)))
	)
	(iter a 0)
)

You can use below to test this procedure.

(define (self x) x)
(define (next x) (+ x 1))

(sum self 0 next 100) should be 5050.