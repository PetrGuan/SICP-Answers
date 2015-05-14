(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

If is a special form,when predicate is true then-clause will be evaluated,otherwise else-clause will be evaluated.Remember only one 
value will be evaluated.But new-if is just a simple procedure.No matter predicate is true or false,then-clause and else-clause will
be evaluated.