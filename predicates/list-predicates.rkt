#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

;; check a list of even boolean expression 
(define (even-all? lst)
  (map even? lst))

;; get a list of odd boolean expression
(define (odd-all? lst) 
  (map odd? lst))
