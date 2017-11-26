 ;Write a function that determines the number of occurrences of a given atom in a nonlinear list.

 (DEFUN Occ(L A)
	(COND
		((NULL L) 0)
		((LISTP(CAR L)) (+(Occ(CAR L) A) (Occ(CDR L) A)))
		((EQUAL A (CAR L)) (+ 1 (Occ(CDR L) A)))
		(T (Occ (CDR L) A))
	)
 )
 
 ;(SETQ X '(1 5 6 (7 ((1) 8) 9) (1) (2 1))) - for testing purposes
 ;(SETQ E 1)
 ;(PRINT (Occ X E))