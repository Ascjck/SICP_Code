(load "41-unique-triples.scm")
(load "41-triple-sum-equal-to.scm")
(load "permutations.scm")
(define (triples-sum-equal-to sum n)
		(flatmap permutations (filter (lambda (current-triple) (triple-sum-equal-to? sum current-triple)) (unique-triples n))))
