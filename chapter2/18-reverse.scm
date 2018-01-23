(define (reverse li)
		(define (iter remained result)
				(if (null? remained)
					result
					(iter (cdr remained) (cons (car remained) result))))
		(iter li (list)))