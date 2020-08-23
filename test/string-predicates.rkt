#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(require rackunit)
(require "../predicates/string/string-predicates.rkt")


;; vowel?
(check-eqv? (vowel? 0) #f)
(check-eqv? (vowel? 'a) #f)
(check-eqv? (vowel? "z") #f)
(check-eqv? (vowel? "a") #t)
(check-eqv? (vowel? "e") #t)
(check-eqv? (vowel? "i") #t)
(check-eqv? (vowel? "o") #t)
(check-eqv? (vowel? "u") #t)

;; consonent?
(check-eqv? (consonent? 0) #f)
(check-eqv? (consonent? 'a) #f)
(check-eqv? (consonent? "z") #t)
(check-eqv? (consonent? "a") #f)
(check-eqv? (consonent? "e") #f)
(check-eqv? (consonent? "i") #f)
(check-eqv? (consonent? "o") #f)
(check-eqv? (consonent? "u") #f)