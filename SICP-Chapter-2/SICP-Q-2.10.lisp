(define (span-zero? x)
    (and (>= (upper-bound x) 0)
         (<= (lower-bound x) 0)))

(define (div-interval-w-err x y)
    (if (span-zero? y)
       (error "Error: the denominator spans 0.")
       (mul-interval x 
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y))))))