(define (average a b c)
	(/ (+ a b c) 3)
)

(define dx 0.00001)

(define (smooth f)
	(lambda (x)
		(average (f x) (f (- x dx)) (f (+ x dx)))
	)
)

(define (repeated-smooth f n)
	(if (= n 0)
		f
		(smooth (repeated-smooth f (- n 1)))
	)
)