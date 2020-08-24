#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/logic/logic-predicates.rkt")

;; true?
(check-eqv? (true? #f) #f)
(check-eqv? (true? #t) #t)
(check-eqv? (true? null) #f)
(check-eqv? (true? (not null)) #f)
(check-eqv? (true? -1) #f)

;; false?
(check-eqv? (false? #f) #t)
(check-eqv? (false? #t) #f)
(check-eqv? (false? null) #f)
(check-eqv? (false? (not null)) #t)
(check-eqv? (false? -1) #f)

;; boolean?
(check-eqv? (boolean? #t) #t)
(check-eqv? (boolean? #f) #t)
(check-eqv? (boolean? null) #f)
(check-eqv? (boolean? 'false) #f)

