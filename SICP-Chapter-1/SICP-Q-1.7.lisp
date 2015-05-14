(define (average x y)
	(/ (+ x y) 2))

(define (sqrt-iter guess x)
   (if (good-enough? guess x)
       guess
       (sqrt-iter (improve guess x)
                  x)))

(define (improve guess x)
   (average guess (/ x guess)))

(define (good-enough? old-guess new-guess)
    (> 0.01
       (/ (abs (- new-guess old-guess))
          old-guess)))

(define (sqrt x)
   (sqrt-iter 1.0 x))


Change a method to implement good-enough? procedure.

