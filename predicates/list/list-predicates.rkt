#lang racket

;; Author: Anurag Muthyam
;; Email: anu.drumcoder@gmail.com
;; https://github.com/aryaghan-mutum/racket-predicates

(provide empty? 
         atom?
         pair?
         list?
         member?
         positive-lst?
         negative-lst?
         even-all?
         odd-all?
         zero-lst?)

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

;; checks if an element in a list is positive
(define (positive-lst? lst)
  (cond ((empty? lst) #t)
        ((< (car lst) 0) #f)
        (else (positive-lst? (cdr lst)))))

;; checks if an element in a list is negative
(define (negative-lst? lst)
  (not (positive-lst? lst)))

;; check if all the elements in a list are zero
(define (zero-lst? lst)
  (cond
     ((empty? lst) #t)
     ((= (car lst) 1) #f)
     (else (zero-lst? (cdr lst)))))

;; check each and every element in a list of even boolean expression
(define (even-all? lst)
  (map even? lst))

;; check each and every element in a list of odd boolean expression
(define (odd-all? lst) 
  (map odd? lst))

