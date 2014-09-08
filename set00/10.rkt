;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |10|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;sum-of-two-largest-numbers: Number Number Number->Number
;GIVEN: Three numbers as an argument
;RETURNS: The sum of the two largest numbers among the three numbers given asan argument
;EXAMPLES: 
;(sum-of-two-largest-numbers 5 2 4)->9
;(sum-of-two-largest-numbers 10 20 5)->30
;(sum-of-two-largest-number -1 -3 -5)-> -4

(define (sum-of-two-largest-number a b c)
  (+ (max a b) (max (min a b) c))
)

(check-expect(sum-of-two-largest-number 5 2 4)9)
(check-expect(sum-of-two-largest-number 10 20 5)30)
(check-expect(sum-of-two-largest-number -1 -3 -5)-4)
