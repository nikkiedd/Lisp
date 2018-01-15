;Write a function that computes the sum of even numbers and subtracts from it the sum of odd numbers, at any level of a list.
(DEFUN alternateSum(X)
	(COND
		( (NULL X)	NIL)
		( (AND (NUMBERP X) (EQUAL (MOD X 2) 0))	X)
		( (AND (NUMBERP X) (EQUAL (MOD X 2) 1))	(- 0 X))
		( (LISTP X) (APPLY #'+ (MAPCAR 'alternateSum X)))
		(T	0)
	)
)
