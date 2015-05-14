(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))

if you get 0 then your interpreter should be using normal-order
otherwise applicative-order.

applicative-order do all calculations at once, when it comes to p then it's a infinite loop...