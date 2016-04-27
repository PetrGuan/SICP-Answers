#lang racket

(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cadr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cadr branch))

(define (branch-weight branch)
  (cond ((null? branch) 0)
        ((pair? (branch-structure branch))
         (+ (branch-weight (left-branch (branch-structure branch)))
            (branch-weight (right-branch (branch-structure branch)))
         )
         )
        (else (branch-structure branch))
    ))

(define (total-weight mobile)
  (if (null? mobile) 0
      (+ (branch-weight (left-branch mobile)) (branch-weight (right-branch mobile)))
  )
)

(define (branch-torque branch)
    (* (branch-length branch)
       (branch-weight branch)))

(define (branch-balanced? branch)
  (cond ((null? branch) #t)
        ((pair? (branch-structure branch))
         (and (branch-balanced? (left-branch (branch-structure branch)))
              (branch-balanced? (right-branch (branch-structure branch)))
              )
         )
        (else #t)
    ))

(define (mobile-balanced? mobile)
  (cond ((null? mobile) #t)
        (else (and (= (branch-torque (left-branch mobile)) (branch-torque (right-branch mobile)))
                   (and (branch-balanced? (left-branch mobile)) (branch-balanced? (right-branch mobile)))
                   ))
    ))
