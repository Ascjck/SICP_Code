(load "huffman-tree-present.scm")
(define (encode message tree)
		(if (null? message)
			'()
			(append (encode-symbol (car message) tree) (encode (cdr message) tree))))

(define (encode-symbol sbl tree)
		(cond ((leaf? tree) '())
			  ((symbol-in-tree? sbl (left-branch tree)) (cons 0 (encode-symbol symbol (left-branch tree))))
			  ((symbol-in-tree? sbl (right-branch tree)) (cons 1 (encode-symbol sbl (right-branch tree))))
			  (else (error "This symbol is not in tree:" sbl))))

(define (symbol-in-tree? sbl tree)
		(not (false? (find (lambda (s) (eq? s sbl)) (symbols tree)))))
