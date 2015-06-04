(define (cont-frac N D k)
	(define (cf i)
		(if (= i k)
			(/ (N i) (D i))
			(/ (N i) (+ (D i) (cf (+ i 1))))
		)
	)
	(cf 1)
)

(cont-frac (lambda (i) 1.0)
           (lambda (i) 1.0)
           k)

(define (golden-ratio k)
    (+ 1
       (cont-frac (lambda (i) 1.0)
                  (lambda (i) 1.0)
                  k)))