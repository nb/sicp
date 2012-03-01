(define (square a)
	(* a a))

(define (good-enough? guess x) 
	(< (abs (- (improve guess x) guess)) 
		(* guess .001)))

(define (good-enough? guess x)
	(< (abs (- (square guess) x)) 0.001))

(define (average x y)
	(/ (+ x y) 2))

(define (improve guess x)
	(average guess (/ x guess)))

(define (sqrt-iter guess x)
	(if (good-enough? guess x)
		guess
		(sqrt-iter (improve guess x)
					x)))

(define (sqrt x)
	(sqrt-iter 1.0 x))

(print (sqrt 1000000000000000))