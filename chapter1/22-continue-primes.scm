(load "22-next-odd.scm")
(load "22-timed-prime-test.scm")

(define (continue-primes n count)
		(cond ((= count 0) )
			   ((prime? n)
			   	(timed-prime-test n)
			   	(continue-primes (next-odd n) (- count 1)))
			   	(else (continue-primes (next-odd n) count))))