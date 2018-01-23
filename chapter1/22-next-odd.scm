(define (next-odd n)
		(if (= (remainder n 2) 0)
			(+ n 1)
			(+ n 2)))