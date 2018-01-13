Write a function that removes all occurrences of an atom from any level of a list. 

(DEFUN myAppend(L)
	(COND
		( (NULL L)	NIL)
		( (CAR L) (CONS (CAR L) (myAppend (CDR L))) )
		( T	(myAppend (CDR L)) )
	)
)

(DEFUN removeAll(X E)
	(COND
		( (EQUAL X E) NIL)
		( (LISTP X) (myAppend (MAPCAR #'(LAMBDA(P)
						(removeAll P E )) X)))
		(T	X)
	)
)