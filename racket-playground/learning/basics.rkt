#lang racket

;; atomic data aka elementary data types considered to be indivisible entities
;; numbers, strings, identifiers
123
"hello there"
pi
;; eval with unbound identifiers  leads to errors, so to prevent from being evald
;; prefix with '
'alpa

"<===> <===> <===> <===> <===> "

;;;; atomic data organization with lists
(list 1 2 3) ; when evald, it prints '(1 2 3)
;the apostrophe is alias for quote keyword
(list "a" "b" "caa")
(list 1 (list "a" "b") 2 3)
; literal list, or a list created as is, can be made by using the keyword quote
(quote (1 "b" "c" 2 pi))
;; the above prints '(1 "b" "c" 2 pi)
;; in quoted lists, identifiers are printed as is.
;; on non-quoted lists, identifiers are evaluated,
;;like below is the un-quoted version of above, notice pi is evaluated
(list 1 "b" "c" 2 pi)
;; the above prints '(1 "b" "c" 2 3.141592653589793)
;; quote is used well in macros and s-expressions eval


;; in racket we can use square and curly braces instead of parentheses
;; this is for better readability
[list 1 2 3]
(quote[1 {"a" "b" "c"} 2 3])