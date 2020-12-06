#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(provide 0?
         1?
         pos?
         neg?
         sum-lesser? 
         sum-greater?
         sum-equal?
         even?
         odd?
         square?
         pythagoras?)

;; check if a number is 0  
(define (0? n) (= n 0))

;; check if a number is 01 
(define (1? n) (= n 1))

; check if a number is positive
(define (pos? n) (>= n 0))

;; check if a number is negative
(define (neg? n) (< n 0))

;; check if the sum of first two numbers is lesser than the third  
(define (sum-lesser? x y z) (< (+ x y) z))

;; check if the sum of first two numbers is greater than the third
(define (sum-greater? x y z) (> (+ x y) z))

;; check if the sum of first two numbers is equal to third
(define (sum-equal? x y z) (= (+ x y) z))

;; check if a number is even
(define (even? n) (0? (remainder n 2)))

;; checks if a number is odd
(define (odd? n) (not (= (remainder n 2) 0)))

;; check if a number is square 
(define (square? n) (integer? (sqrt n)))

;; baudhayana/pythagous-proof using lexical scoping
(define (pythagoras? x y z)

  (define (area-of-outer-sqr)
    (+ (sqr x) (* 2 x y) (sqr y)))
  
  (define (area-of-inner-sqr)
    (+ (area-of-four-triangles x y) (sqr z)))

  (define (area-of-four-triangles b h) (/ (* 4 b h) 2))

  (= (area-of-outer-sqr) (area-of-inner-sqr)))
