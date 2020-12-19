;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com

#lang racket
(provide true? 
         false? 
         boolean?)
         
;; check if x is true 
(define (true? x) (eq? x #t))

;; check if x is false 
(define (false? x) (eq? x #f))

;; check if x is a boolean expression 
(define (boolean? x)
  (or (eq? x #t) (eq? x #f)))

