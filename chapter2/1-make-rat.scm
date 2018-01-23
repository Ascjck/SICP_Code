(define (make-rat n d)
		(if (< d 0)
			(cons (- n) (- d))
			(cons n d)))

(define (numer x)
		(car x))

(define (denom x)
		(cdr x))