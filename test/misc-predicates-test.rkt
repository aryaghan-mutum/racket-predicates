;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com

#lang racket
(require rackunit "../predicates/miscellaneous/misc-predicates.rkt")

;; leap?
(check-true (leap? 0))
(check-true (leap? 1804))
(check-true (leap? 2016))
(check-false (leap? 2018))
(check-true (leap? 2020))

;; expression?
(check-true (expression? 0))
(check-true (expression? 'symbol))