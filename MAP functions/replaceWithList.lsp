Write a function that substitutes an element E with all elements of a list L1 at all levels of a given list L.

(DEFUN replace1(X E L1)
	(COND
		((NULL X) NIL)
		((EQUAL E X) L1)
		((LISTP X) (APPEND (MAPCAR #'(LAMBDA(X)
									(replace1 X E L1)) X)))
		(T	X)
	)
)