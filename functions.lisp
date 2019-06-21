;; functions.lisp: https://lisp-lang.org/learn/functions

;; named functions
;; ~~~~~~~~~~~~~~~

;; You define functions using the defun macro:
(defun fib (n)
  "Return the nth Fibonacci number."
  (if (< n 2)
      n
      (+ (fib (- n 1))
         (fib (- n 2)))))

;; And call them like you call anything else:
(fib 30) ;; 832040

;; anonymous functions
;; ~~~~~~~~~~~~~~~~~~~

;; Functions can be called indirectly using funcall:
(funcall #'fib 30) ;; 832040

;; Or with apply:
(apply #'fib (list 30)) ;; 832040

;; mupltiple return values
;; ~~~~~~~~~~~~~~~~~~~~~~~

(defun many (n)
  (values n (* n 2) (* n 3)))

(multiple-value-list (many 2)) ;; (2 4 6)
(nth-value 1 (many 2)) ;; 4

;; We can also use multiple-value-bind to assign each return value to a variable:
(multiple-value-bind (first second third)
   (many 2)
 (list first second third)) ;; (2 4 6)
