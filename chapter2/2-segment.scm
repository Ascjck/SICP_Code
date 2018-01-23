(define (print-point p)
		(newline)
		(display "(")
		(display (x-point p))
		(display ",")
		(display (y-point p))
		(display ")"))

(define (make-segment start-point end-point)
		(cons start-point end-point))

(define (start-segment seg)
		(car seg))

(define (end-segment seg)
		(cdr seg))

(define (make-point x y)
		(cons x y))


(define (x-point p) (car p))

(define (y-point p) (cdr p))