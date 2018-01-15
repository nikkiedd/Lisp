;Write a function that returns the sum of the numerical atoms in a list, at any level

(DEFUN sum(X)
	(COND
		((NUMBERP X)	 X)
		((LISTP X) (APPLY #'+ (MAPCAR #'sum X)) )
		(T		0)
	)
)
