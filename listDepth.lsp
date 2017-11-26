;Write a function to return the depth of a list ( the depth of a linear list is 1)

(DEFUN depth(L)
	(COND
		((NULL L) 1)
		((ATOM (CAR L)) (depth (CDR L)))
		(T  (+ (depth (CAR L))  (depth (CDR L))) )
	)
)

;(SETQ L '(1 2 3 (4 5 (6 7(8 (11)) 9) 10))) - for testing purposes
;(PRINT (depth L))