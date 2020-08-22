#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

;; check if two lists are equal
(define (equal-lst? x y)
  (or (equal? x y)
      (and (pair? x)
           (pair? y)
           (equal-lst? (car x) (car y))
           (equal-lst? (cdr x) (cdr y)))))