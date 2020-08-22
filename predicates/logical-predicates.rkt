#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates


;; get a list of even boolean expression using map
(define (even-lst-map lst)
  (map even? lst))