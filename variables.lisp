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

;; dynamic variables
;; ~~~~~~~~~~~~~~~~~

;; Dynamic variables are sort of like global variables, but more useful: 
;; they are dynamically scoped.
(defparameter *string* "I'm global")
(defun print-variable () (print *string*))
(print-variable) ;; Prints "I'm global"
(let ((*string* "I have dynamic extent"))
     (print-variable)) ;; Prints "I have dynamic extent"
(print-variable) ;; Prints "I'm global"

;; when you redefine the value of a dynamic variable using let, the variable 
;; is bound to the new value inside the body of the let, and the old value 
;; is ‘restored’ afterwards.
