;; firststeps.lisp

#|
  Lisp syntax is very simple: there are few rules to remember. 

  Syntax is made up of S-expressions. An S-expression is either an atom or a list.

  Atoms can be numbers like 10, 3.14, or symbols like t (the truth constant), +, my-variable. 
  There’s also a special kind of symbol called keywords, which are colon-prefixed symbols like :thing or :keyword. 
  Keywords evaluate to themselves: you can think of them sort of like enums.
|#

(format t "Hello, world!")
