(define ((repeated f n) x)
	(if (> n 1)
		(f ((repeated f (- n 1)) x))
		(f x)
	)
)

