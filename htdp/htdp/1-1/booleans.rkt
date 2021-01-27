#lang htdp/bsl

;; booleans
; or
; and
; not

"or boolean"

(or #true #true) ;true
(or #true #false) ;true
(or #false #true) ;true
(or #false #false) ;false

"and boolean"

(and #true #true) ;true
(and #true #false) ;false
(and #false #true) ;false
(and #false #false) ;false

"not boolean"

(not #true) ;false
(not #false) ;true