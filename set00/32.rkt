;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |32|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define (manhattan-distance a-list)
  (cond
    [(empty? a-list) empty]
    [else (cons (calculate (first a-list))(manhattan-distance (rest a-list)))]
  )
)
(define (calculate a-list)
  
    (+ (posn-x  a-list) (posn-y  a-list)) 
   
)

(manhattan-distance (list (make-posn 5 2) (make-posn 3 6) (make-posn 12 10)))
