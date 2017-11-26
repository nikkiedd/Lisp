; Write a function that returns the greatest common divisor of all numbers in a nonlinear list

(DEFUN EUCLID (A B)
	(COND
		((EQUAL B 0) A)
		(T  (EUCLID B (MOD A B)))
	)
)

(DEFUN GCD1(L)
	(COND
		((NULL L) 0)
		((ATOM (CAR L)) (EUCLID (CAR L) (GCD1 (CDR L))) )
		((LISTP (CAR L))  (EUCLID (GCD1 (CAR L)) (GCD1 (CDR L))) )
	)
)

;(SETQ L '(16 (12 8)(4 32)) ) - for testing purposes
;(PRINT (GCD1 L))