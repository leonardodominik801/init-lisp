;; functions.lisp

;; Named functions
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
(fib 30)
