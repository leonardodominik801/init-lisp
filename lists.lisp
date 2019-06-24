;; lists.lisp: https://lisp-lang.org/learn/lists

;; basics
;; ~~~~~~
;; Lists can be built using the list function:
(list 1 2 3)

;; You can use first, second, and all the way up to 
;; tenth to access the corresponding elements of a list:
(first (list 1 2 3)) ;; 1
(second (list 1 2 3)) ;; 2

;; These can also be used to set elements:
(defparameter my-list (list 1 2 3))
(setf (second my-list) 7)
my-list ;; (1 7 3)

;; More generally, the nth function can be used:
(nth 1 (list 1 2 3)) ;; 2 

;; And it works with setf:
(defparameter my-list (list 1 2 3))
(setf (nth 1 my-list) 65)
my-list ;; (1 65 3)

;; higher-order-functions
;; ~~~~~~~~~~~~~~~~~~~~~~
;; The map function takes a function and a list, goes through 
;; each element in the sequence, and returns a new list where 
;; every element is the result of calling that function with 
;; the original element.
(mapcar #'evenp (list 1 2 3 4 5 6)) ;; (NIL T NIL T NIL T)

;; The reduce function can be used to turn a list into a scalar, 
;; by applying a function on successive subsets of the list.
(reduce #'+ (list 1 2 3)) ;; 6

;; The sort function allows you to sort a sequence:
(sort (list 9 2 4 7 3 0 8) #'<) ;; (0 2 3 4 7 8 9)

;; destructuring
;; ~~~~~~~~~~~~~
(defun destructure (list)
  (destructuring-bind (first second &rest others)
    list
    (format t "First: ~A~%" first)
    (format t "Second: ~A~%" second)
    (format t "Rest: ~A~%" others)))
(destructure (list 1 2 3 4 5 6))
;; this produces:
;; First: 1
;; Second: 2
;; Rest: (3 4 5 6)
;; NIL
