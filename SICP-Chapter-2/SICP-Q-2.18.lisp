(define (length items)
  (if (null? items)
0
      (+ 1 (length (cdr items)))))


(define (length items)
  (define (length-iter a count)
    (if (null? a)
        count
        (length-iter (cdr a) (+ 1 count))))
(length-iter items 0))



(define (reverse list)
    (if (= (length list) 1)
        (car list)
        (cons (reverse (cdr list)) (car list))))
