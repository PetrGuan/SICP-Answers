(define (double n)
    (+ n n))

(define (halve n)
    (/ n 2))

(define (multi a b)
	(if (= b 0)
			0
			((even? a) (double (multi (halve a) b)))
			(else (+ (multi (- a 1) b) b))
	)

)