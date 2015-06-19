using (add-1 zero) to get one

(add-1 zero)

substitute add-1

((lambda (f) (lambda (x) f ((n f) x))) )


( (lambda (f) (lambda (x) f ((zero f) x))) )

(zero f) should be (lambda (f) (lambda (x) x)),remember this is a procedure

then ((zero f) x) should just be x

(lambda (f) (lambda (x) (f x)))

so this is (add-1 zero) or we can call it one

( lambda (f) 
 (lambda (x) (f x))
)

------------------------------------------------------------------------------------

using (add-1 (add-1 zero)) to get two

((lambda (f) (lambda (x) f ((one f) x))) )

((lambda (f) (lambda (x) f (f x))) )

so two should be

(lambda (f) 
	(	 lambda (x) 
		(f (f x))
	)
) 


------------------------------------------------------


(define +
    (lambda (m)
        (lambda (n)
            (lambda (f)
                (lambda (x)
                    (m f (n f x))
                )
            )
        )
    )
)