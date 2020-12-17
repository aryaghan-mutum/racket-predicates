;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

#lang racket
(require rackunit)
(require "../predicates/numer/numerical-predicates.rkt")

;; 0?
(check-false (0? -1))
(check-true (0? 0))
(check-false (0? 1))
(check-false (0? -3.14))
(check-false (0? pi))

;; 1?
(check-false (1? -1))
(check-false (1? 0))
(check-true (1? 1))
(check-false (1? -3.14))
(check-false (1? pi))

;; pos?
(check-false (pos? -1))
(check-true (pos? 0))
(check-true (pos? 1))
(check-false (pos? -3.14))
(check-true (pos? pi))

;; neg?
(check-true (neg? -1))
(check-false (neg? 0))
(check-false (neg? 1))
(check-true (neg? -3.14))
(check-false (neg? pi))

;; even?
(check-false (even? -3))
(check-true (even? -2))
(check-true (even? -0))
(check-true (even? 2))
(check-false (even? 3))

;; odd?
(check-true (odd? -3))
(check-false (odd? -2))
(check-false (odd? -0))
(check-false (odd? 2))
(check-true (odd? 3))

;; square?
(check-false (square? -3))
(check-false (square? -2))
(check-true (square? 0))
(check-false (square? 2))
(check-false (square? 3))
(check-true (square? 25))
(check-true (square? 25.0))
(check-false (square? 1/25))

;; prime?
(check-false (prime? 1))
(check-true (prime? 2))
(check-true (prime? 3))
(check-false (prime? 4))
(check-true (prime? 5))
(check-false (prime? 6))
(check-true (prime? 7))
(check-false (prime? 9))
(check-true (prime? 79))
(check-false (prime? 1337))
(check-true (prime? 314159))

;; sum-lesser?
(check-false (sum-lesser? 2 3 5))
(check-false (sum-lesser? 3 2 5))
(check-false (sum-lesser? 2 3 4))
(check-true (sum-lesser? 1 3 5))
(check-false (sum-lesser? 0 0 0))

;; sum-greater?
(check-false (sum-greater? 2 3 5))
(check-false (sum-greater? 3 2 5))
(check-true (sum-greater? 2 3 4))
(check-false (sum-greater? 1 3 5))
(check-false (sum-greater? 0 0 0))

;; sum-equal?
(check-true (sum-equal? 2 3 5))
(check-true (sum-equal? 3 2 5))
(check-false (sum-equal? 2 3 4))
(check-false (sum-equal? 1 3 5))
(check-true (sum-equal? 0 0 0))

;; pythagoras?
(check-true (pythagoras? 3 4 5))
(check-false (pythagoras? 1 2 3))
