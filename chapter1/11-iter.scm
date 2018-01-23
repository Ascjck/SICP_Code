

(define (f-rec a b c n)
		(if (= n 0)
			c
			(f-rec b c (+ (* 3 a) (* 2 b) c) (- n 1))))

(define (f n)
		(if (< n 2)
			n
			(f-rec 0 1 2 (- n 2))))