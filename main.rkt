;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com

#lang racket

(provide (all-from-out
          "./predicates/comparison/comparison-predicates.rkt"
          "./predicates/list/list-predicates.rkt"
          "./predicates/logic/logic-predicates.rkt"
          "./predicates/numer/numerical-predicates.rkt"
          "./predicates/numer/prime.rkt"
          "./predicates/string/string-predicates.rkt"
          "./predicates/miscellaneous/leap.rkt"))

;; comparison predicates
(require "./predicates/comparison/comparison-predicates.rkt") 

;; list predicates
(require "./predicates/list/list-predicates.rkt") 

;; logic prediates
(require "./predicates/logic/logic-predicates.rkt") 

;; numerical predicates
(require "./predicates/numer/numerical-predicates.rkt") 

;; string predicates
(require "./predicates/string/string-predicates.rkt") 

;; miscellaneous predicates 
(require "./predicates/miscellaneous/leap.rkt") 



