;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |8|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; circle-area: Number->Number
; GIVEN: the radius r of the circle
; RETURNS: the area of the circle usig the formula pi * r^2
; EXAMPLES
;(circle-area 1)->3.142857
;(circle-area 5)->78.57
;(circle-area 7)->153.9972

(define (circle-area r)
  (* pi (sqr r))
)

(check-within(circle-area 1) 3 1)
(check-within(circle-area 5)78.5 0.5)
(check-within(circle-area 7)153.8 0.2)