(define (improve guess x)
	(/ (+ (/ x (square guess)) (* 2 guess)) 3))

