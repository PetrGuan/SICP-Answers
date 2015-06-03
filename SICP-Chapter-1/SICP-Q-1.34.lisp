Using DrRacket I saw this exception:

application: not a procedure;
expected a procedure that can be applied to arguments

this could be explained in this way:

(f f)

(f (lambda (g)
       (g 2)))

((lambda (g)
     (g 2))
 (lambda (g)
     (g 2)))

((lambda (g)
    (g 2))
 2)

(2 2)
