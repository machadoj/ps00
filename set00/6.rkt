;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |6|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;quadratic-root: NonZeroNumber Number Number->Number
;GIVEN: the three co-efficients a,b and c of the quadratic equation
;RETURNS: the quadratic root of the equation
;EXAMPLES: 
;(quadratic-root 1 -2 -3)->3
;(quadratic-root 1 -3 -10)->5
;(quadratic-root 2 7 6)->5

(define (quadratic-root a b c)
  (/ (+ (- 0 b)(sqrt (- (sqr b)(* 4 a c)))) (* 2 a))
)

(check-expect(quadratic-root 1 -2 -3) 3)
(check-expect(quadratic-root 1 -3 -10)5)
(check-expect(quadratic-root 2 7 6) -1.5)
