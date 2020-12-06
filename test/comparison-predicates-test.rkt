#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/comparison/comparison-predicates.rkt")

;; equal-lst?
(check-eqv? (equal-lst? '() '()) #t)
(check-eqv? (equal-lst? '(1) '(1)) #t)
(check-eqv? (equal-lst? '(a) '(a)) #t)
(check-eqv? (equal-lst? '(1 2 3) '(1 2 3)) #t)
(check-eqv? (equal-lst? '(a b c) '(a b c)) #t)
;(check-eqv? (equal-lst? '(a b c) '(a c b)) #f)
;(check-eqv? (equal-lst? '(1 2 3) '(1 3 2)) #f)

