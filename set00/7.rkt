;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |7|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; circumference: Number->Number
; GIVEN: the radius r of the circle
; RETURNS: its circumference, using the formula 2 * pi * r
;EXAMPLES
;(circumference 1)->6.28318530717
;(circumference 0)->0
;(circumference 3)->18.852
;(circumference 5)->31.42
;(circumference 10)->62.84

(define (circumference r)
(* 2 pi r)
)

(check-range(circumference 1) 6 7)
(check-range(circumference 0) 0 1)
(check-range(circumference 3) 18 19)
(check-range(circumference 5) 30 32)
(check-range(circumference 10) 62 63)
