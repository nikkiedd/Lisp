;Merge 2 sets without keeping the duplicates

(DEFUN merge1 (A B)
	(COND
		((NULL A) B)
		((NULL B) A)
		( (<(CAR A) (CAR B)) (CONS (CAR A) (merge1 (CDR A) B)) )
		( (>(CAR A) (CAR B)) (CONS (CAR B) (merge1(CDR B) A)) )
		( (EQL(CAR A) (CAR B)) (CONS (CAR A) (merge1 (CDR A) (CDR B))))
	)
)

;(SETQ L '(1 4 6 8 10))
;(SETQ P '(1 2 3 5 8 10 11 14 16))
;(print (merge1 L P))  - for testing purposes
