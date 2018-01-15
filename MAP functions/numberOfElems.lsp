;Write a function that returns the number of atoms in a list, at any level.

(DEFUN count1(X)
	(COND
		( (NULL X)	0)
		( (ATOM X) 1)
		( T (APPLY #'+ (MAPCAR #'count1 X)))
	)
)
