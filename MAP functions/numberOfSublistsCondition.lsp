;Find the number of sublists for which the sum of the numeric atoms on odd levels is an even number.
;(the superficial level is level 1)

(DEFUN oddLevelsSum(X LVL)
	(COND
		( (AND (NUMBERP X) (EQUAL (MOD LVL 2) 1))	X)
		( (LISTP X)	(APPLY #'+ (MAPCAR #'(LAMBDA(Y)
						(oddLevelsSum Y (+ 1 LVL))
					    ) X)))
		( T	0)
	)
)

(DEFUN noSublists(X)
	(COND
		( (ATOM X)	0)
		( (EQUAL (MOD (oddLevelsSum X 0) 2) 0)	(+ 1 (APPLY #'+ (MAPCAR #'noSublists X))) )
		(T	(APPLY #'+ (MAPCAR #'noSublists X)))
	)
)