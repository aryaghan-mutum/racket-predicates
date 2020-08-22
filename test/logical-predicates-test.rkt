#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates


(false? #f)        ;#t
(false? #t)        ;#f
(false? null)      ;#f
(false? (not null));#t

;; boolean
(boolean? #t)      ;#t
(boolean? #f)      ;#t
(boolean? null)    ;#f
(boolean? 'false)  ;#f

