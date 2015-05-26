(define (even? a)
	(= (remainder a 2) 0)
)

(define (next-odd num)
	(if (even? num)
		(+ num 1)
		(+ num 2)
	)
)

(define (prime? n)
	(cond ((= n 1) (= n 2))
	(else (= (smallest-divisor n) n))
	)
)

(define (next-prime start-num)
	(if (prime? (next-odd start-num))
		(next-odd start-num)
		(next-prime (next-odd start-num))
	)
)

(define (report-prime prime)
   (display " *** prime is ")
   (display prime)
)

(define (search-for-primes start-num count)
	(cond ((= count 1) (report-prime (next-prime start-num)))
		(else 
			(report-prime (next-prime start-num))
			(newline)
			(search-for-primes (next-prime start-num) (- count 1))
		)
	)
)


----------------------------------------------------------
(search-for-primes 1000 3)
 *** prime is 1009
 *** prime is 1013
 *** prime is 1019

(search-for-primes 10000 3)
 *** prime is 10007
 *** prime is 10009
 *** prime is 10037

 (search-for-primes 100000 3)
 *** prime is 100003
 *** prime is 100019
 *** prime is 100043