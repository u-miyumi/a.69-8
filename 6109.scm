; -- Q1: over or under -- 
; define a procedure over-or-under which takes in a number num1 and a number num2 and returns the following:
; > -1 if num1 is less than num2
; > 0 if num1 is equal to num2
; > 1 if num1 is greater than num2

(define (over-or-under num1 num2)
      (cond ((< num1 num2) -1)
            ((= num1 num2) 0)
            ((> num1 num2) 1)))

; -- Q2: make adder --
; write the procedure make-adder which takes in an initial number, num, and then returns a procedure. this returned procedure takes in a number inc and returns the result of num + inc.

(define (make-adder num) (lambda (inc) (+ num inc)))

; -- Q3: compose --
; write the procedure composed, which takes in procedures f and g and outputs a new procedure. this new procedure takes in a number x and outputs the result of calling f on g of x.

(define (composed f g)  (lambda (x) (f (g x))))

; -- Q4: repeato --
; write the procedure repeat, which takes in a procedure f and a number n, and outputs a new procedure. this new procedure takes in a number x and outputs the result of applying f to x a total of n times.

(define (repeat f n) 
  (cond 
    ((= n 0) (lambda (x) x))
    (else (composed f (repeat f (- n 1))))
  )
)

; -- Q5: greatest common divisor -- 
; the GCD is the the greatest common divisor of two positive integers.
; write the procedure gcd, which computes the GCD of numbers a and b using Euclid's algorithm, which uses the fact that the GCD of two values is either of the following:
; > the smaller value if it evenly divides the larger value, or
; > the greatest common divisor of the smaller value and the remainder of the larger value divided by the smaller value

(define (max a b)
  (if (> a b)
      a
      b)
)

(define (min a b)
  (if (> a b)
      b
      a)
)

(define (gcd a b) 
  (if (zero? b) a (gcd b (modulo a b)))
)

; DATE : 040224
; TYPE : 766566
; ID : 09
; FEEDBACK : 01/1