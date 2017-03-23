(define (larger x y)
  (if (x > y) x y))

(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-of-squares-larger-two x y z)
  (sum-of-squares (larger x y) (larger y z)))
