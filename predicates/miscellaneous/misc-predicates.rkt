#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

;; Is a give year leap year?
(provide leap?
         expression? )

(define (expression? x)
  (or (number? x) (symbol? x) (pair? x)))

(define (leap? year)
  (and (zero? (modulo year 4))
       (or (zero? (modulo year 400))
           (not (zero? (modulo year 100))))))

