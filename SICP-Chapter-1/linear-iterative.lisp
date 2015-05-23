(define (factorial n)
	(fact-iter 1 1 n)
)

(define (fact-iter product counter n)
	(if (= counter n)
		product
		(fact-iter (* product (+ counter 1)) (+ counter 1) n)
	)
)