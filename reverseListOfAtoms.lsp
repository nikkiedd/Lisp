#|Write a function to get from a given list the list of all atoms, on any level, but reverse order. 
  Example:	(((A B) C) (D E)) ==> (E D C B A)|#
  
 (DEFUN rev(L)
	(COND
		((NULL L) NIL)
		( (LISTP (CAR L)) (APPEND (rev (CDR L)) (rev (CAR L))) )
		( (ATOM (CAR L)) (APPEND (rev (CDR L)) (LIST(CAR L))) )
	)
)

;(SETQ X '(1 2 (3 4 (5 6) 7 8 (9(10)))))
;(PRINT X)
;(SETQ Z (rev X))
;(PRINT Z)
