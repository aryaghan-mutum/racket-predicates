#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

;; Is a give year leap year?
(provide leap?)

(define (leap? year)
  (and (zero? (modulo year 4))
       (or (zero? (modulo year 400))
           (not (zero? (modulo year 100))))))

;(leap? 2016)   ;#t
;(leap? 2018)   ;#f
;(leap? 2020)   ;#t