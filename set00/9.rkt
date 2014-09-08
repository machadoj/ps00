;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |9|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;even:Number->Boolean
;GIVEN:a number as an argument to find out wheter it can be divided by 2 or not
;RETURN:a boolean values true if the number can be divided by 2 or false if it cannot be divided by 2
;EXAMPLES: 
;(even? 4)-> true
;(even? 5)-> false
;(even? -6)-> true

(define(even x)
  (if (equal? (remainder x 2) 0) true false)
)

(check-expect(even 4) true)
(check-expect(even 5) false)
(check-expect(even -6) true)