(define (make-segment p1 p2)
	(cons p1 p2)
)

(define (start-point segment)
	(car segment)
)

(define (end-point segment)
	(cdr segment)
)

(define (make-point x y)
	(cons x y)
)

(define (x-point p)
	(car p)
)

(define (y-point p)
	(cdr p)
)


(define (midpoint-segment segment)
	(make-point (/ (+ (car (start-point segment)) (car (end-point segment))) 2) 
				(/ (+ (cdr (start-point segment)) (cdr (end-point segment))) 2)
	)
)


(define (print-point p)
    (newline)
    (display "(")
    (display (x-point p))
    (display ",")
    (display (y-point p))
    (display ")")
)


