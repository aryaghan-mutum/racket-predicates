#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/miscellaneous/misc-predicates.rkt")

;; leap?
(check-eqv? (leap? 0) #t)
(check-eqv? (leap? 1804) #t)
(check-eqv? (leap? 2016) #t)
(check-eqv? (leap? 2018) #f)
(check-eqv? (leap? 2020) #t)

;; expression?
(check-eqv? (expression? 0) #t)
(check-eqv? (expression? 'symbol) #t)