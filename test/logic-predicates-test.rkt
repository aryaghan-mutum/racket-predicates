;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com

#lang racket
(require rackunit "../predicates/logic/logic-predicates.rkt")

;; true?
(check-false (true? #f))
(check-true (true? #t))
(check-false (true? null))
(check-false (true? (not null)))
(check-false (true? -1))

;; false?
(check-true (false? #f))
(check-false (false? #t))
(check-false (false? null))
(check-true (false? (not null)))
(check-false (false? -1))

;; boolean?
(check-true (boolean? #t))
(check-true (boolean? #f))
(check-false (boolean? null))
(check-false (boolean? 'false))