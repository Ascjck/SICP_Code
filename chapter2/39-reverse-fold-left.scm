(load "fold-left.scm")
(define (reverse sequence)
		(fold-left (lambda (result item)
							(cons item result)) '() sequence))