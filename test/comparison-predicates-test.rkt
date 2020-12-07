#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/comparison/comparison-predicates.rkt")

;; equal-lst?
(check-true (equal-lst? '() '()))
(check-true (equal-lst? '(1) '(1)))
(check-true (equal-lst? '(a) '(a)))
(check-true (equal-lst? '(1 2 3) '(1 2 3)))
(check-true (equal-lst? '(a b c) '(a b c)))
;(check-false (equal-lst? '(a b c) '(a c b)))
;(check-false (equal-lst? '(1 2 3) '(1 3 2)))
