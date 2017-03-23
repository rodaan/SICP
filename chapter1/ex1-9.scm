; Internal functions:
(define (inc x)
  (+ x 1))

(define (dec y)
  (- y 1))

(define (+ a b)
  (if (= a 0)
      b
      (inc (+ (dec a) b))))

; When evaluating (+ 4 5) will look like this using the substitution model:
; => (+ 4 5)
; => (if (= 4 0)
;        5
;        (inc (+ (dec 4) 5)))
; => (if (= 4 0)
;        5
;        (+ (+ (- 4 1) 5) 1)) 
; => (if (= 4 0)
;        5
;        (+ (+ 3 5) 1))
; => (if (= 4 0)
;        5
;        (+ (if (= 3 0)
;               5
;               (inc (+ (dec 3) 5))) 1))
; => ...
; => 9

; Since the previous procedure must be stored in memory due to the trailing 1,
; this is recursive.

(define (+ a b)
  (if (= a 0)
      b
      (+ (dec a) (inc b))))

; When evaluating (+ 4 5) will look like this using the substitution model:
; => (+ 4 5)
; => (if (= 4 0)
;        5
;        (+ (dec a) (inc b)))
; => (if (= 4 0)
;        5
;        (+ (- 4 1) (+ 5 1))
; => (if (= 4 0)
;        5
;        (+ 3 (if (= 5 0)
;                 1
;                 (+ (dec 5) (inc 1)))))
; => ...
; => 9

; Since the previous procedure must be stored in memory due to the starting 3,
; this is recursive.

