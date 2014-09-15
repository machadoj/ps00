;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |30|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (reverse-list a-list)
  (cond
    [(empty? a-list) empty]
    [else (cons (not (first a-list))(reverse-list (rest a-list)))]
  )
)

(reverse-list (list true false true))