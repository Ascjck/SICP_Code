(define (last-pair li)
		(cond ((null? li) (error "list empty"))
			  ((null? (cdr li)) li)
			  (else (last-pair (cdr li)))))