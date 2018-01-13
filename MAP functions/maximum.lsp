(DEFUN maximum(X)
	(COND
		( (NULL X) 0)
		( (NUMBERP X) X)
		( (LISTP X) (APPLY #'MAX (MAPCAR #'maximum X)))
		(T -10000)
	)
)