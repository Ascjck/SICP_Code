(define (union-set set1 set2)
		(cond ((and (null? set1) (null? set2)) '())
			  ((null? set1) set2)
			  ((null? set2) set1)
			  (else (let ((x (car set1))
			  			  (y (car set2)))
			  			 (cond ((= x y) (cons x (union-set (cdr set1) (cdr set2))))
			  			 	   ((< x y) (cons x (union-set (cdr set1) set2)))
			  			 	   ((> x y) (cons y (union-set set1 (cdr set2)))))))))