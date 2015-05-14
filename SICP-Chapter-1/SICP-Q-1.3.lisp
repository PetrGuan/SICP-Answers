(define (square a) (* a a))

(define (smaller a b)
	(if (> a b)
		b
		a)
)

(define (smallest a b c)
	(if (= (smaller a b) a)
		(smaller a c)
		(smaller b c))
)

(define (sum-larger-squares a b c)
	(-(+ (square a) (square b) (square c)) (square (smallest a b c)))
)