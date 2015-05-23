(define (fib n)
	(fib-iter 0 1 n)
)

(define (fib-iter a b n)
	(if (= n 0)
		a
		(fib-iter (+ a b) a (- n 1))
	)
)