(define (p) (p))

(define (test x y)
  (if (= x 0) 0 y))

; If the interpreter uses applicative-order evaluation the following steps
; would happen for (test 0 (p)):
; => (test 0 (p))
; => (test 0 (p))
; => (test 0 (p))
; => ... 
; it will continue doing this because the expression will try to
; evaluate the procedure defined as (p) first as applicative-order evaluation
; will re-write the innermost occurance of a function application first which
; will in turn recursively call itself (p) as defined by (p).

; If the interpreter uses natural-order evaluation the following steps would
; happen for (test 0 (p))): 
; => (test 0 (p))
; => (if (= 0 0) 0 (p))
; => 0
; Natural-order evalution on the other than will evaluate the leftmost
; occurance of a function application first and go left to right. (p) is the
; right most function application and so is not evaluated at all.
