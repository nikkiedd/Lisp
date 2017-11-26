; Write a function to determine the list of all sublists of a given list, on any level. 
; (a sublist is either the list itself, or any element that is a list, at any level)

(DEFUN sublists(L)
	(COND
		((NULL L) NIL)
		((LISTP (CAR L)) (CONS (CAR L) (APPEND (sublists (CAR L)) (sublists (CDR L)))))
		((ATOM (CAR L)) (sublists(CDR L)))
	)
)

;(SETQ L '(1 2 (3 (4 5) (6 7)) 8 (9 10))) - for testing purposes
;(PRINT (sublists L))