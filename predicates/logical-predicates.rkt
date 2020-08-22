#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

;; check if x is true 
(define (true? x) (eq? x #t))

;; check if x is false 
(define (false? x) (eq? x #f))

;; check if x is a boolean expression 
(define (boolean? x)
  (or (eq? x #t) (eq? x #f)))

