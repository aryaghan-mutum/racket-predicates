#lang scribble/manual

@require[@for-label[racket-predicates
                    racket/base]]

@title{racket-predicates}

@author[@author+email["Anurag Muthyam" "anu.drumcoder@gmail.com"]]

@defmodule[racket-predicates]

A library composed of predicates functions

source code: @url["https://github.com/aryaghan-mutum/racket-predicates"]

@section{Comparison Predicates}

@defproc[(equal-lst? [v any?]) (-> any? boolean?)]{
  check if two lists are equal.
  @module-examples[
    (equal-lst? '(1 2 3) '(1 2 3))     
    (equal-lst? '(1 2 3) '(1 3 2))      
    (equal-lst? '(a b c) '(a b c))       
]}

@section{List Predicates}

@defproc[(empty? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[empty?], and returns @racket[#f] otherwise.
  Equivalent to @racket[(nil?)].
  @module-examples[
    (empty? '())
    (empty? '(pi))
    (empty? '("string"))
    (empty? #t)
    (empty? #f)
    (empty? 'symbol)
]}

@defproc[(zero-lst? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[zero-lst?], and returns @racket[#f] otherwise.
  @module-examples[
    (zero-lst? '())
    (zero-lst? (list 1 1 1 0 0 1))
    (zero-lst? (list 1 1 0 1 1 0))
    (zero-lst? (list 0 0 0 0 0 0))
]}

@defproc[(zero-lst? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[zero-lst?], and returns @racket[#f] otherwise.
  @module-examples[
    (zero-lst? '())
    (zero-lst? (list 1 1 1 0 0 1))
    (zero-lst? (list 1 1 0 1 1 0))
    (zero-lst? (list 0 0 0 0 0 0))
]}

@defproc[(member? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[member?], and returns @racket[#f] otherwise.
  @module-examples[
    (member? 1 '(1 2 3))
    (member? 10 '(1 2 3))
    (member? 10 '())
    (member? 'e '(a b c d))
]}

@section{Logic Predicates}

@defproc[(true? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[true?], and returns @racket[#f] otherwise.
  @module-examples[
    (true? #f)
    (true? #t)
    (true? null)
    (true? (not null))
    (true? -1)
]}

@defproc[(false? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[false?], and returns @racket[#f] otherwise.
  @module-examples[
    (false? #f)
    (false? #t)
    (false? null)
    (false? (not null))
    (false? -1)
]}

@defproc[(boolean? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[boolean?], and returns @racket[#f] otherwise.
  @module-examples[
    (boolean? #t)
    (boolean? #f)
    (boolean? null)
    (boolean? 'false)
]}

@section{Numerical Predicates}

@defproc[(0? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[0?], and returns @racket[#f] otherwise.
  @module-examples[
    (0? -1)
    (0? 0)
    (0? 1)
    (0? -3.14)
    (0? pi)
]}

@defproc[(1? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[1?], and returns @racket[#f] otherwise.
  @module-examples[
    (1? -1)
    (1? 0)
    (1? 1)
    (1? -3.14)
    (1? pi)
]}

@defproc[(pos? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[pos?], and returns @racket[#f] otherwise.
  @module-examples[
    (pos? -1)
    (pos? 0)
    (pos? 1)
    (pos? -3.14)
    (pos? pi)
]}

@defproc[(neg? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[neg?], and returns @racket[#f] otherwise.
  @module-examples[
    (neg? -1)
    (neg? 0)
    (neg? 1)
    (neg? -3.14)
    (neg? pi)
]}

@defproc[(even? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[even?], and returns @racket[#f] otherwise.
  @module-examples[
    (even? -3) #f)
    (even? -2)
    (even? -0)
    (even? 2)
    (even? 3)
]}

@defproc[(odd? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[odd?], and returns @racket[#f] otherwise.
  @module-examples[
    (odd? -3) #f)
    (odd? -2)
    (odd? -0)
    (odd? 2)
    (odd? 3)
]}

@defproc[(square? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[square?], and returns @racket[#f] otherwise.
  @module-examples[
    (square? -3)
    (square? -2)
    (square? 0)
    (square? 2)
    (square? 3)
    (square? 25)
    (square? 25.0)
    (square? 1/25)
]}

@defproc[(prime? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[prime?], and returns @racket[#f] otherwise.
  @module-examples[
    (prime? 2)
    (prime? 3)
    (prime? 4)
    (prime? 5)
    (prime? 6)
]}

@defproc[(sum-lesser? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[sum-lesser?], and returns @racket[#f] otherwise.
  @module-examples[
    (sum-lesser? 2 3 5)
    (sum-lesser? 2 3 4)
    (sum-lesser? 1 3 5)
    (sum-lesser? 0 0 0)
]}

@defproc[(sum-greater? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[sum-greater?], and returns @racket[#f] otherwise.
  @module-examples[
    (sum-greater? 2 3 5)
    (sum-greater? 3 2 5)
    (sum-greater? 2 3 4)
    (sum-greater? 1 3 5)
    (sum-greater? 0 0 0)
]}

@defproc[(sum-equal? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[sum-equal?], and returns @racket[#f] otherwise.
  @module-examples[
    (sum-equal? 2 3 5)
    (sum-equal? 3 2 5)
    (sum-equal? 2 3 4)
    (sum-equal? 1 3 5)
    (sum-equal? 0 0 0)
]}

@section{String Predicates}

@defproc[(vowel? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[vowel?], and returns @racket[#f] otherwise.
  @module-examples[
    (vowel? 0)
    (vowel? 'a)
    (vowel? "z")
    (vowel? "a")
    (vowel? "e")
    (vowel? "i")
    (vowel? "o")
    (vowel? "u")
]}

@defproc[(consonent? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[consonent?], and returns @racket[#f] otherwise.
  @module-examples[
    (consonent? 0)
    (consonent? 'a)
    (consonent? "z")
    (consonent? "a")
    (consonent? "e")
    (consonent? "i")
    (consonent? "o")
    (consonent? "u")
]}

@section{Miscellaneous}

@defproc[(leap? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[leap?], and returns @racket[#f] otherwise.
  @module-examples[
    (leap? 0)
    (leap? 1804)
    (leap? 2016)    
    (leap? 2018)
    (leap? 2020)
]}

@defproc[(expression? [v any?]) boolean?]{
  Returns @racket[#t] if @racket[v] is @racket[expression?], and returns @racket[#f] otherwise.
  @module-examples[
    (expression? 0)
    (expression? 'symbol)
]}

