(defun drop-all (atm lst)
  (cond ((atom lst) lst)
	((equal (car lst) atm) (drop-all atm (cdr lst)))
	((consp (car lst)) (cons (drop-all atm (car lst))(drop-all atm (cdr lst))) )
	(t (cons (car lst)(drop-all atm (cdr lst))))))

;;this function create a single list from list which contain list inside it.
(defun flatten (lst)
	(cond ((null lst) nil)
		((atom lst) (list lst))
		(t (append (flatten (car lst))
		(flatten (cdr lst))))
	)
)

(defun find-nums (lst)
	(setq numlst '())
	(loop for i in (flatten lst)
		do (
			if (numberp i)
			(setq numlst (append numlst (cons i nil)))
		)
	)
	(write numlst)
)
