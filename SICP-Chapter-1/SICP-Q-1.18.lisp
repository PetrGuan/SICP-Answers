(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (multi a b)
	(multi-iter a b 0)
)

(define (multi-iter a b product)
	(cond ((= b 0) product)
		((even? a) (multi-iter (halve a) b (double product)))
		(else (multi-iter a (- b 1) (+ product a)))
	)
)