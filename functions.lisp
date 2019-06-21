;; functions.lisp

;; named functions
;; ~~~~~~~~~~~~~~~
;;
;; You define functions using the defun macro:
(defun fib (n)
  "Return the nth Fibonacci number."
  (if (< n 2)
      n
      (+ (fib (- n 1))
         (fib (- n 2)))))
;;
;; And call them like you call anything else:
(fib 30) ;; 832040

;; anonymous functions
;; ~~~~~~~~~~~~~~~~~~~
;;
;; Functions can be called indirectly using funcall:
(funcall #'fib 30) ;; 832040
;;
;; Or with apply:
(apply #'fib (list 30)) ;; 832040
