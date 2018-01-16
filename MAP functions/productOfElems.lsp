;Write a function that returns the product of numeric atoms in a list, at any level

(DEFUN prod(X)
	(COND
		((NUMBERP X) 	X)
		((LISTP X) (APPLY #'* (MAPCAR #'prod X)) )
		(T		1)
	)
)
