; Ackermann's function:

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

; => (A 1 10)
; => (A 0 (A 1 9))
; => (A 0 (A 0 (A 1 8)))
; => (A 0 (A 0 (A 0 (A 1 7))))
; => (A 0 (A 0 (A 0 (A 0 (A 0 6)))))
; => (A 0 (A 0 (A 0 (A 0 ... (A 0 0)))))
; => 1024

; => (A 2 4)
; => 65536

; => (A 3 3)
; => 65536 

(define (f n) (A 0 n))
; => (A 0 n)
; => (* 2 n)
; => (2n)

(define (g n) (A 1 n))
; => (A 1 n)
; => (A 0 (A 1 n-1))
; => (A 0 (A 0 (A 1 n-2))) ...
; => when n = 1, A(1 1) = 2 and when A(0 n) = 2n
; => (A 0 (A 0 (A 0 ... (A 1 1))))
; => 2 * 2 * 2 ... 2
; => 2**n

(define (h n) (A 2 n))
; => (A 2 n)
; => (A 1 (A 2 n-1)
; => (A 1 (A 1 (A 2 n-2))) ...
; => when n = 1, A(2 1) = 2 and when A(1 n) = 2**n
; => there are n times of 2**n which are all multiplied together
; => addition of exponents with the same bases means added the exponent so...
; => 2**2n

(define (k n) (* 5 n n))
; => 5n**2
