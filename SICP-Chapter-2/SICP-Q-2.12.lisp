(define (make-interval a b) (cons a b))

(define (upper-bound interval)
	(cdr interval)
)

(define (lower-bound interval)
	(car interval)
)

(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2)
)

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

---------------------------------------------------------------------------------------

ratio = width / midpoint

ratio = (b - a)/ (b + a) 

(1 - ratio)b = (1 + ratio)a

2center = (b + a)

2center = b + (1-ratio)/(1+ratio)
b = 2center - (1-ratio)/(1+ratio)
a = (1-ratio)/(1+ratio)

so

(define (make-center-percent center ratio)
	(cons (/ (- 1 ratio) (+ 1 ratio)) (- (* 2 center) (/ (- 1 ratio) (+ 1 ratio))))
)

(define (percent interval)
	(/ (- (upper-bound interval) (lower-bound interval)) (+ (upper-bound interval) (lower-bound interval)))
)





