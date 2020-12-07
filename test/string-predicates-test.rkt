#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/string/string-predicates.rkt")

;; vowel?
(check-false (vowel? 0))
(check-false (vowel? 'a))
(check-false (vowel? "z"))
(check-true (vowel? "a"))
(check-true (vowel? "e"))
(check-true (vowel? "i"))
(check-true (vowel? "o"))
(check-true (vowel? "u"))

;; consonent?
(check-false (consonent? 0))
(check-false (consonent? 'a))
(check-true (consonent? "z"))
(check-false (consonent? "a"))
(check-false (consonent? "e"))
(check-false (consonent? "i"))
(check-false (consonent? "o"))
(check-false (consonent? "u"))