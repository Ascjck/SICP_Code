(load "7-good-enough.scm")
(load "8-improve.scm")
(load "8-cube.scm")

(define (cubic-iter guess x)
	(if (good-enough? (improve guess x) guess)
	(improve guess x)
	(cubic-iter (improve guess x) x)))