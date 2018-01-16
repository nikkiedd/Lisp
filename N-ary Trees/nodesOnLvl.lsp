;Find the nodes on a given level K of an n-ary tree

(defun nodesOnLvl(L LVL K)
	(cond
		( (null L)	nil)
		( (and (equal LVL K)(atom L))	(list L))
		( (listp L)	(mapcan #'(lambda(X)
					(nodesOnLvl X (+ 1 LVL) K)) L ))
		( t	nil)
	)
)

(defun nodesOnLvlWrap(L K)
	(nodesOnLvl L -1 K)
)