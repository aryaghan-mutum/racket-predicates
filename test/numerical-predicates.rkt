#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/numer/numerical-predicates.rkt")
(require "../predicates/numer/prime.rkt")

;; 0?
(check-eqv? (0? -1) #f)
(check-eqv? (0? 0) #t)
(check-eqv? (0? 1) #f)
(check-eqv? (0? -3.14) #f)
(check-eqv? (0? pi) #f)

;; 1?
(check-eqv? (1? -1) #f)
(check-eqv? (1? 0) #f)
(check-eqv? (1? 1) #t)
(check-eqv? (1? -3.14) #f)
(check-eqv? (1? pi) #f)

;; pos?
(check-eqv? (pos? -1) #f)
(check-eqv? (pos? 0) #t)
(check-eqv? (pos? 1) #t)
(check-eqv? (pos? -3.14) #f)
(check-eqv? (pos? pi) #t)

;; neg?
(check-eqv? (neg? -1) #t)
(check-eqv? (neg? 0) #f)
(check-eqv? (neg? 1) #f)
(check-eqv? (neg? -3.14) #t)
(check-eqv? (neg? pi) #f)

;; even?
(check-eqv? (even? -3) #f)
(check-eqv? (even? -2) #t)
(check-eqv? (even? -0) #t)
(check-eqv? (even? 2) #t)
(check-eqv? (even? 3) #f)

;; odd?
(check-eqv? (odd? -3) #t)
(check-eqv? (odd? -2) #f)
(check-eqv? (odd? -0) #f)
(check-eqv? (odd? 2) #f)
(check-eqv? (odd? 3) #t)

;; square?
(check-eqv? (square? -3) #f)
(check-eqv? (square? -2) #f)
(check-eqv? (square? 0) #t)
(check-eqv? (square? 2) #f)
(check-eqv? (square? 3) #f)
(check-eqv? (square? 25) #t)
(check-eqv? (square? 25.0) #t)
(check-eqv? (square? 1/25) #f)

;; prime?
(check-eqv? (prime? 2) #t)
(check-eqv? (prime? 3) #t)
(check-eqv? (prime? 4) #f)
(check-eqv? (prime? 5) #t)
(check-eqv? (prime? 6) #f)

;; sum-lesser?
(check-eqv? (sum-lesser? 2 3 5) #f)
(check-eqv? (sum-lesser? 3 2 5) #f)
(check-eqv? (sum-lesser? 2 3 4) #f)
(check-eqv? (sum-lesser? 1 3 5) #t)
(check-eqv? (sum-lesser? 0 0 0) #f)

;; sum-greater?
(check-eqv? (sum-greater? 2 3 5) #f)
(check-eqv? (sum-greater? 3 2 5) #f)
(check-eqv? (sum-greater? 2 3 4) #t)
(check-eqv? (sum-greater? 1 3 5) #f)
(check-eqv? (sum-greater? 0 0 0) #f)

;; sum-equal?
(check-eqv? (sum-equal? 2 3 5) #t)
(check-eqv? (sum-equal? 3 2 5) #t)
(check-eqv? (sum-equal? 2 3 4) #f)
(check-eqv? (sum-equal? 1 3 5) #f)
(check-eqv? (sum-equal? 0 0 0) #t)

;; pythagous??
(check-eqv? (pythagous? 3 4 5) #t)
(check-eqv? (pythagous? 1 2 3) #f)

