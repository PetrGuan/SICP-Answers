(define (perimeter rectangle)
	(* (+ (length rectangle) (width rectangle)) 2)
)

(define (area rectangle)
	(* (length rectangle) (width rectangle))
)

(define (make-rectangle segment-len segment-wid)
	(cons segment-len segment-wid)
)

(define (length rectangle)
	(- (car (cdr (car rectangle))) (car (car (car rectangle))))
)

(define (width rectangle)
	(- (cdr (cdr (cdr rectangle))) (cdr (car (cdr rectangle))))
)