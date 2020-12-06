#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/list/list-predicates.rkt")

;; empty?
(check-equal? (empty? '()) #t)
(check-equal? (empty? '(pi)) #f)
(check-equal? (empty? '("string")) #f)
(check-equal? (empty? #t) #f)
(check-equal? (empty? #f) #f)
(check-equal? (empty? 'symbol) #f)

;; zero-lst?
(check-eqv? (zero-lst? '()) #t)
(check-eqv? (zero-lst? (list 1 1 1 0 0 1)) #f)
(check-eqv? (zero-lst? (list 1 1 0 1 1 0)) #f)
(check-eqv? (zero-lst? (list 0 0 0 0 0 0)) #t)

;; list?
; (list? '(0))                                ;#t
; (list? '(1 3 5 7))                          ;#t
; (list? '(a b null '(1 2)))                  ;#t
; (list? 23)                                  ;#f
; (ist? '1)                                  ;#f
; (list? (cons 1 2))                          ;#f
; (list? (cdr '(1 2 3 4 5)))                  ;#t
; (list? (cons 1 (cons 2 (cons 3 '()))))      ;#t

;; member?
(check-eqv? (member? 1 '(1 2 3)) #t)
(check-eqv? (member? 10 '(1 2 3)) #f)
(check-eqv? (member? 10 '()) #f)
(check-eqv? (member? 'e '(a b c d)) #f)

;; palindrome?
(check-eqv? (palindrome? '(m o m)) #t)
(check-eqv? (palindrome? '(m o n e y)) #f)