#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/list/list-predicates.rkt")


;; empty?
(check-true (empty? '()))
(check-false (empty? '(pi)))
(check-false (empty? '("string")))
(check-false (empty? #t))
(check-false (empty? #f))
(check-false (empty? 'symbol))

;; zero-lst?
(check-true (zero-lst? '()))
(check-false (zero-lst? (list 1 1 1 0 0 1)))
(check-false (zero-lst? (list 1 1 0 1 1 0)))
(check-true (zero-lst? (list 0 0 0 0 0 0)))

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
(check-true (member? 1 '(1 2 3)))
(check-false (member? 10 '(1 2 3)))
(check-false (member? 10 '()))
(check-false (member? 'e '(a b c d)))

;; palindrome?
(check-true (palindrome? '(m o m)))
(check-false (palindrome? '(m o n e y)))