;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |31|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (circle-list a-list)
  (cond
    [(empty? a-list) empty]
    [else (cons (circle (first a-list) "solid" "blue")(circle-list (rest a-list)))]
  )
)

(circle-list (list 10 20 30))