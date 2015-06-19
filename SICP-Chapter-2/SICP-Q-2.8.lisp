You could use "add-interval" procedure to define "sub-interval"

(define (sub-interval x y)
	(add-interval x (make-interval (* -1 (lower-bound y)) (* -1 (upper-bound y)) ))
)

