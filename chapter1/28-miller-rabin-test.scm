(load "28-expmod.scm")

(define (test-iter n times)
		(cond ((= times 0)
				true)
				((= (expmod (+ 1 (random (- n 1))) (- n 1) n) 1)
				(test-iter n (- times 1)))
				(else
				false)))

(define (Miller-Rabin-test n)
		(let ((times (ceiling (/ n 2))))
			(test-iter n times)))