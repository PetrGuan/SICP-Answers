#lang racket

(define (empty-tree? tree)
  (null? tree))

(define (leaf? tree)
  (not (pair? tree)))

(define (left-branch tree)
  (car tree))

(define (right-branch tree)
  (cdr tree))


(define (fringe tree)
  (cond ((empty? tree) '())
        ((leaf? tree) (list tree))
        (else (append (fringe (left-branch tree))
                      (fringe (right-branch tree))
                      ))
    ))
