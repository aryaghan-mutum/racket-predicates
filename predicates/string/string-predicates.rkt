#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(provide vowel? 
         consonent?)
         
;; check if a given letter is a vowel
(define (vowel? letter)
  (let ((vlst '("a" "e" "i" "o" "u")))
    (define (vowel-helper letter vlst)
      (cond ((empty? vlst) #f)
            ((eq? letter (car vlst)) #t)
            (else (vowel-helper letter
                                (cdr vlst)))))
       (vowel-helper letter vlst)))

;; check if a given letter is a consonent
(define (consonent? letter)
  (not (vowel?? letter)))
