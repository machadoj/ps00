;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |27|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;;DATA DEFINITION

;;A function that takes a list of Strings and draws them as a text

;;STRUCTURE DEFINITION:
;;(list a-list)


;;CONSTRUCTOR TEMPLATE
;;(cons a-list empty)

;;INTERPRETATION
;;a-list: A list of Strings

;;DESTRUCTOR TEMPLATES
;;: draw-fn->Draws a text from the combination of Strings

;(define (draw-fn a-list)
;  (...
;     (text (first a-list) (draw-fn(rest a-list)))
;   )
;)

;;EXAMPLES
;;(draw-fn (list "This used" "to" "be a" "String")

;;draw-fn: list->image
;;GIVEN: a list of Strings
;;RETURNS:An image


(define (draw-fn list)
  (cond 
    [(empty? list) ""]
    [else(string-append(first list)" "(draw-fn (rest list)) )] 
    )
  )

;;TEST
(draw-fn (list "This" "used" "to be" "String"))
;(draw-fn (list "This used" "to" "be a" "String"))
