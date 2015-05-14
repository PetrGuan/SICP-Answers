(define (cube x) (* x x x))
(define (square x) (* x x))

(define (miverage x y)
	(/ (+ x y) 3))

(define (improve guess x)
	(miverage (/ x (square guess))
		(* 2 guess)
	) 
)

(define (good-enough? guess improved_guess)
	(< (/ (abs (- guess improved_guess)) guess) 0.001))
	
(define (cube-iter guess x)
	(if (good-enough? guess (improve guess x))
		guess
		(cube-iter (improve guess x) x)
	)
)

(define (cube-root x)
	(cube-iter 1.0 x)
	)