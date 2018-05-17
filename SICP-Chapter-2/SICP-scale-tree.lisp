(define (scale-tree tree factor)
    (cond ((null? tree) nil)
          ((not (pair? tree)) (* tree factor))
          (else (cons (scale-tree (car tree) factor)
                      (scale-tree (cdr tree) factor)
                      ))))


                      (define (scale-tree tree factor)
                          (map (lambda (sub-tree)
                                 (if (pair? sub-tree)
                                     (scale-tree sub-tree factor)
                                     (* sub-tree factor)))
                               tree))
