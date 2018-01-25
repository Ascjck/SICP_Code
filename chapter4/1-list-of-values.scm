(define (list-of-value exps env)
    (if (no-operands? exps)
        '()
        (let ((first-value (eval (first-operand exps) env)))
            (cons first-value (list-of-value (rest-operands exp) env)))))
