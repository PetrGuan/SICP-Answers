(define (iter remained-items result)
    (if (null? remained-items)
        result
        (iter (cdr remained-items)
              (cons (car remained-items) result))))



(define (square-list items)
    (define (iter things answer)
        (if (null? things)
            (reverse answer)
            (iter (cdr things)
                  (cons (square (car things))
                        answer))))
    (iter items '()))
