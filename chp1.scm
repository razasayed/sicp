10

(+ 5 3 4)

(- 9 1)

(/ 6 2)

(+ (* 2 4) (- 4 6))

(define a 3)

(define b (+ a 1))

(+ a b (* a b))

(= a b)

(if (and (> b a) (< b (* a b)))
    b
    a)

(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25))

(+ 2 (if (> b a) b a))

(* (cond ((> a b) a)
	 ((< a b) b)
	 (else -1))
   (+ a 1))

(/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))

(define (square x) (* x x))
(define (sum-of-squares x y) (+ (square x) (square y)))
(define (sum-of-square-largest a b c)
  (cond ((and (>= b a) (>= c a)) (sum-of-squares b c))
	((and (>= a b) (>= c b)) (sum-of-squares a c))
	((and (>= a c) (>= b c)) (sum-of-squares a b))))

(sum-of-square-largest 7 5 2)

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 3 -4)
