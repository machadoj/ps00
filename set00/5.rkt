;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |5|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;sq: Number->Number
;GIVEN:a number whose square is to be calculated
;RETURNS:the square of the number entered.
;EXAMPLES:
;(sq 5)->25
;(sq -10)->100
;(sq 30)->900
;(sq -4)->16
;(sq 0.3)->0.09

(define (sq number)
  (sqr number)
)

(check-expect(sq 5)25)
(check-expect(sq -10)100)
(check-expect(sq 30)900)
(check-expect(sq -4)16)
(check-expect(sq 0.3)0.09)