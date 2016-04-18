(define (odd? num)
    (if (= (remainder num 2) 0)
        #f
        #t))

        (define (even? num)
    (if (= (remainder num 2) 0)
        #t
        #f))



        (define (same-one x y)
            (cond
              ((and (even? x) (even? y)) #t)
              ((and (odd? x) (odd? y)) #t)
              (else #f))
            )


            (define (same-parity x . z)
                (define (iter x res z)
                  (if (null? z)
                      res
                      (if (same-one x (car z))
                          (iter x (cons res (car z)) (cdr z))
                          (iter x res (cdr z)))
                      )
                  )
                (iter x x z))
