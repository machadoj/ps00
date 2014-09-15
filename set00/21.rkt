;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |21|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define-struct person (first-name last-name age height weight))
(define (draw-person a-person)
(overlay/offset
(overlay/offset
(overlay/offset
(overlay/offset
(overlay/offset
(rectangle (person-height a-person) (+ 100 (person-height a-person)) "solid" "blue") (- 50 (person-height a-person)) (-(+ 50(person-height a-person)))
(circle (+ (person-height a-person) 0) "solid" "blue") )
-8 80
(rectangle 2 60 "solid" "blue")
)
 5 45
 (rectangle 2 75 "solid" "blue")
) -20 -15 (line -50 50 "Blue"))
20 -22 (line 60 60 "blue")
)
 )

(draw-person (make-person "A" "XYZ" 20 50 60))
(draw-person (make-person "A" "XYZ" 10 25 500))