;Find the path from the root to a given node (n-ary trees)

(defun myOr(L)
	(cond
		( (null L) nil)
		( (car  L) t  )
		(t (myOr (cdr L)) )
	)
)

(defun exists(L E)	;checkes whether the atom E is in the list L (at any level)
	(cond
		( (and (atom L) (equal L E)) T)
		( (atom L) NIL)
		( T (myOr (mapcar #'(lambda(L)(exists L E)) L )))
	)
)

(defun path(L N)
	(cond
		( (atom L) nil)
		((exists L N) (append (list (car L))  (mapcan #'(lambda(L)(path L N)) L ) ) )	;-using mapcan in order to flatten the list
		(t nil)										;and lose the NILs
	)
)