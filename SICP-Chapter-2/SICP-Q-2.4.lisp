(define (cons x y)
   (lambda (m) (m x y)))
Understanding the above, it's easy to see how car and cdr work; let's just dissect car, cdr works similarly:

(define (car z)
  (z (lambda (p q) p)))
In the above code z is a closure, the same that was created by cons, and in the body of the procedure we're passing it another lambda as parameter, remember m? it's just that! the function that it was expecting. Let's see this in action, substituting values one step at a time:

; create a closure with `cons`, pass it along to `car`
(car (cons 1 2))

; substitute `(cons 1 2)` with the definition of `cons`
(car (lambda (m) (m 1 2)))

; substitute `car` with its definition
((lambda (m) (m 1 2)) (lambda (p q) p))

; replace `m` with the passed parameter
((lambda (p q) p) 1 2)

; bind 1 to `p` and 2 to `q`, return p
1


------------------------------------------------
You could see http://stackoverflow.com/questions/21769348/use-of-lambda-for-cons-car-cdr-definition-in-sicp for more info.