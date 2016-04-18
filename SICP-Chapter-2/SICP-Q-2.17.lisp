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


(define (last-pair list)
    (if (= (length list) 1)
        (car list)
        (last-pair (cdr list))))


(define (last-pair list)
      (define (last-iter a len)
          (if (= len 1)
              (car a)
              (last-iter (cdr a) (- len 1))))
(last-iter list (length list)))
