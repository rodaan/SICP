(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
; if b is greater than 0 meaning that it is a positive number
; the operator applied to the a and b operands is addition
; if b is less than 0 or negative, the negative number is subtracted from a
; which is the equivalent of addition to a positive number
