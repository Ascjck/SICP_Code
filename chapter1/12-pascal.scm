(define (pascal row col)
		(cond ((or (= col 0) (= row col)) 1)
				(else (+ (pascal (- row 1) (- col 1)) (pascal (- row 1) col)))))