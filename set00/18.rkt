;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |18|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;The next two dimensions of the rectangle are: 
;32X64
;64X128

;rec-sequence: Number->Number
;GIVEN: A number whose nth element is to be found
;RETURNS: A number using the formula 2^nX2^(n+1)

(define (rec-sequence n)
 (expt 2 (+ n 1))
)
(rec-sequence 1)
(rec-sequence 2)
(rec-sequence 3)
(rec-sequence 5)
