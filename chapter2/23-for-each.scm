(define (for-each p li)
		(if (not (null? li))
			 (begin
				(p (car li))
				(for-each p (cdr li)))))