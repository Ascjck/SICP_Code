(load "p30-even.scm")
(define (double x) (* x 2))

(define (halve x) (/ x 2))

(define (mul-iter a b c) 
		(cond ((= b 0) c)
				((even? b)
				(mul-iter (double a) (halve b) c))
				(else (mul-iter a (- b 1) (+ c a)))))

(define (mul a b) (mul-iter a b 0))