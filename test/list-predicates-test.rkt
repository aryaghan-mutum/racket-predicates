#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../list/list-predicates.rkt")

(check-eqv? (zero-lst? '()) #t)
(check-eqv? (zero-lst? (list 1 1 1 0 0 1)) #f)
(check-eqv? (zero-lst? (list 1 1 0 1 1 0)) #f)
(check-eqv? (zero-lst? (list 0 0 0 0 0 0)) #t)



(nil? '())      ;#t
(nil? empty)    ;#t
(nil? null)     ;#t
(nil? '(1 2 3)) ;#f


(my-list? '(0))                                ;#t
(my-list? '(1 3 5 7))                          ;#t
(my-list? '(a b null '(1 2)))                  ;#t
(my-list? 23)                                  ;#f
(my-list? '1)                                  ;#f
(my-list? (cons 1 2))                          ;#f
(my-list? (cdr '(1 2 3 4 5)))                  ;#t
(my-list? (cons 1 (cons 2 (cons 3 '()))))      ;#t

(member? 1 '(1 2 3))
(member? 10 '(1 2 3))
(member? 10 '())
(member? 'e '(a b c d))