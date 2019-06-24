;; variables.lisp: https://lisp-lang.org/learn/variables

;; named variables
;; ~~~~~~~~~~~~~~~

;; Variables are declared with the `let` special operator:
(let ((str "Hello, World!")) 
  (string-upcase str)) ;; => "HELLO, WORLD!"

;; You can define multiple variables:
(let ((x 1) (y 5))
  (+ x y)) ;; => 6

;; To define variables whose initial values depend on previous 
;; variables in the same form, use `let*`:
(let* ((x 1)
       (y (+ x 1)))
  y) ;; => 2
