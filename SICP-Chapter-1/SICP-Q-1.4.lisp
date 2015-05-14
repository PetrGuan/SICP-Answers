(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b)
)

this procedure describes a plus the abs value of b
should be equal to   a + |b|