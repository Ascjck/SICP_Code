(load "2-segment.scm")


(define (average x y)
		(/ (+ x y) 2.0))

(define (midpoint-segment seg)
		(let ((start (start-segment seg))
			(end (end-segment seg)))
			(make-point (average (x-point start) (x-point end))
						(average (y-point start) (y-point end)))))

