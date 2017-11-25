;Write a function that inserts in a linear list a given atom A after the 2nd, 4th, 6th, ... element.
 
 (DEFUN insert(L A Pos)	
    (COND
		((NULL L) NIL)
		((EQUAL (REM Pos 2) 0) (CONS (CAR L) (CONS A (insert (CDR L) A (+ 1 Pos)))) )
		(T (CONS (CAR L) (insert L A (+ 1 Pos))) )
		
	)
)

;(SETQ L '(5 5 5 5 5 5 5 5)) - for testing purposes
;(SETQ A 23)
;(SETQ Pos 1)
;(print (insert L A Pos))