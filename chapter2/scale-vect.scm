(load "vect.scm")

(define (scale-vect factor vect)
		(make-vect (* factor (xcor-vect vect))
					(* factor (ycor-vect vect))))