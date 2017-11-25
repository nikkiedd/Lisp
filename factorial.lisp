(DEFUN factorial(n)
( COND
	( (EQUAL n 0) 1)
	(T  ( * n ( factorial (- n 1)) ) )
)
)

;(print (factorial 4)) - for testing purposes