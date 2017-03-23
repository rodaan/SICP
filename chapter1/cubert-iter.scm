(define (cubert-iter guess x)
  (if (good-enough? guess x)
    guess
    (cubert-iter (improve guess x)
      x)))

(define (good-enough? guess x)
  (< (abs (- (cube guess) x)) 0.001))

(define (cube x)
  (* x x x))

(define (abs x)
  (if (< x 0)
    (- x)
    x))

(define (improve guess x)
  (approx guess (/ x guess)))

(define (approx x y)
  (/ (+ (/ x (* y y)) (* 2 y)) 3))

(define (cubert x)
  (cubert-iter 1.0 x))
