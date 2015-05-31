(define (filter-accumulate filter combiner null-value term a next b)
	(if (> a b)
		null-value
		(if (filter a)
			(combiner (term a) (filter-accumulate filter combiner null-value term (next a) next b))
			(filter-accumulate filter combiner null-value term (next a) next b)
		)
	)
)

(define (square n)
  (* n n))
(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (define (next n)
      (if (= n 2)
          3
          (+ n 2)))
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (prime? n)
	(if (= n 1)
		#f
		(= n (smallest-divisor n))
	)
)

  (define (sum-prime a b)
  	(define (next x) (+ x 1))
  	(filter-accumulate prime? + 0 square a next b)
  )

  --------------------------------------------------------

  (define (gcd a b)
   (if (= b 0)
       a
       (gcd b (remainder a b)))
  )

  (define (product-gcd n)
  	(define (flag i) 
  		(if (= (gcd i n) 1)
  			#t
  			#f
  		)
  	)
  	(define (next x) (+ x 1))
  	(define (self x) x)
  	(filter-accumulate flag * 1 self 1 next (- n 1))
  )

  