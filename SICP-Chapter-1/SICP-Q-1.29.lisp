[f(a) + f(b) + sigma:4f(odd) + sigma:2f(even)] * h/3

(f a) (f b)   

(sum f a next b)

sigma:4f(odd) = f(a+h) + f(a+3h) + f(a+5h)+...f(a+nh - h)
sigma:4f(even) = f(a+2h) + f(a+4h) + f(a+6h)+...f(a+nh - 2h)


(define (next x)
	(+ x (* 2 h))
)
(sum f (+ a h) next (- b h))

(sum f (+ a h h) next (- b h h))
----------------------------------------------------------
Below is the code.

(define (sum term a next b)
	(if (> a b)
		0
		(+ (term a) (sum term (next a) next b))
	)
)

(define (cube x) (* x x x))

(define (simpson f a b n)
	(define h (/ (- b a) n))
	(define (next x) (+ x (* 2 h)))

	(* (/ h 3) 
	(+ (f a) (f b) 
	(* 4 (sum f (+ a h) next (- b h))) 
	(* 2 (sum f (+ a h h) next (- b h h))))
	)
)

---------------------------------------------------------------------
Now I really understand that a is the start point while b is the end.