(define (f n)
	(cond ((< n 3) n)
		  (else (+ (f (- n 1)) (* (f (- n 2)) 2) (* (f (- n 3)) 3))) 
	)
)


f(0) = 0
f(1) = 1
f(2) = 2
f(3) = 3 * 0 + 2 * 1 + 1 * 2 = 4
f(4) = 4 * 1 + 2 * 2 + 1 * 3 = 11

(define (f n)
	(f-iter 2 1 0 n)
)

(define (f-iter a b c counter)
	(	if(< counter 3)
		(- (+ a counter) 2)
		(f-iter (+ a (* b 2) (* c 3)) a b (- counter 1))
	)
)