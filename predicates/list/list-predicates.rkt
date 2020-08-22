#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(provide empty? 
         atom?
         pair?
         list?
         member?
         even-all?
         odd-all?)

;; check if a list is null and a string is empty
(define (empty? x)
  (or (null? x)
      (and (string? x) (string=? x ""))))

;; check if x is an atom
(define (atom? x)
  (not (pair? x)))

;; check if x is a pair
(define (pair? x)
  (not (atom? x)))

;; check is a list is empty
(define (list? lst)
  (or (empty? lst)
      (and (pair? lst)
           (list? (cdr lst)))))

;; check if a number is present in a list
(define (member? n lst)
    (cond ((empty? lst) #f)
          ((eq? n (car lst)) #t)
          (else (member? n (cdr lst)))))

;; check a list of even boolean expression 
(define (even-all? lst)
  (map even? lst))

;; get a list of odd boolean expression
(define (odd-all? lst) 
  (map odd? lst))
