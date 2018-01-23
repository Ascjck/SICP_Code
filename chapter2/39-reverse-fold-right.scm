(load "fold-right.scm")
(define (reverse sequence)
		(fold-right (lambda (item rest)
							(append rest (list item))) '() sequence))