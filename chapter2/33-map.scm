(load "accumulate.scm")

(define (map p sequence)
		(accumulate (lambda (x y) (cons (p x) y) ) '() sequence))