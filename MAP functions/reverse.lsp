;Write a function that reverses a list together with all its sublists elements, at any level

(DEFUN rev(X)
	(COND
		( (NULL X)	NIL)
		( (ATOM X)	X)
		(T (APPEND (APPLY #'REVERSE (LIST (MAPCAR #'rev X)))))
	)
)
