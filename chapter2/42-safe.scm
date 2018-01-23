(define (safe? k position)
		(define (iter-check row-of-new-queen rest-of-queens i)
				(if (null? rest-of-queens)
					true
					(let ((row-of-current-queen (car rest-of-queens)))
						(if (or (= row-of-current-queen row-of-new-queen)
								(= (abs (- i k)) (abs (- row-of-current-queen row-of-new-queen))))
							false
							(iter-check row-of-new-queen (cdr rest-of-queens) (- i 1))))))
		(iter-check (car position) (cdr position) (- k 1)))