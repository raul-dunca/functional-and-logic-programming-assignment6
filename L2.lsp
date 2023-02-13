;gnu clisp  2.49.60



(DEFUN ELIM (tree oldnode newnode)
(COND
((eq tree oldnode) newnode)
((ATOM tree) tree)
(T (mapcar #'(lambda (x) (ELIM x oldnode newnode)) tree))
)
)


(print (ELIM '(a (b (c)) (d) (e (f))) 'b 'g))





