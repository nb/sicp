(define (square a)
	(* a a))

(define (sum-of-squares2 a b)
	(+ (square a) (square b)))

(define (sum-of-squares3 a b c)
	(+ (square a) (square b) (square c)))

(define (f0 a b c)
	(cond
		((= a (min a b c)) (sum-of-squares2 b c))
		((= b (min a b c)) (sum-of-squares2 a c))
		((= c (min a b c)) (sum-of-squares2 a b))))

(define (f1 a b c)
	(- (sum-of-squares3 a b c) (square (min a b c)))
	)

; switch between implementations
(define f f0)
	
(print (f 1 2 3)) ; 13
(print (f 1 3 2)) ; 13
(print (f 2 1 3)) ; 13
(print (f 2 3 1)) ; 13
(print (f 3 2 1)) ; 13
(print (f 3 1 2)) ; 13

(print (f 5 5 5)) ; 50