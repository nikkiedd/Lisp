Write a function that produces the linear list of all atoms of a given list, from all levels, and written in the same order.

(DEFUN linearize(X)
	(COND
		( (NULL X)	NIL)
		( (ATOM X)	(LIST X))
		( T (APPEND (MAPCAN #'linearize X)))
	)