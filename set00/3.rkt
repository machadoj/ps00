;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |3|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
; f->c: Number->Number
;GIVEN: The temperature in degree Fahrenheit as an argument
;RETURNS: The equivalent temperature in degree clesius
;EXAMPLES:
;(f->c 32)->0
;(f->c 50)->10
;(f->c 68)->20
;(f->c -31)->-35

(define (f->c temperature)
  (*(- temperature 32)(/ 5 9))
)

(check-expect(f->c 32) 0)
(check-expect(f->c 50)10)
(check-expect(f->c 68)20)
(check-expect(f->c -31)-35)
(check-range(f->c 100)37 38)
