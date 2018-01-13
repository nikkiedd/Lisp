Write a function that substitutes an element with another one at all levels of a given list

(DEFUN replaceAll(X E S)
	(COND
		( (EQUAL X E) S)
		( (ATOM X)	 X)
		( T (APPEND (MAPCAR #'(LAMBDA (Y)
					(replaceAll Y E S)
					) X 
							)
			)
		)
	)
)