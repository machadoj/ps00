;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |25|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;;DATA DEFINITION

;;Given a list of booleans, returns true if all booleans in the list are true. 

;;STRUCTURE DEFINITION:
;;(list a-list)


;;CONSTRUCTOR TEMPLATE
;;(cons a-list empty)

;;INTERPRETATION
;;a-list: A list of boolean values

;;DESTRUCTOR TEMPLATES
;;: all-values-true?->Returns true if all the values in the list are true else it reuturns false

;(define (all-values-true? a-list)
;  (...
;      (and(first a-list)(all-values-true?(rest a-list)))
;   )
;)

;;EXAMPLES
;;(all-values-true? (list true true true))= true
;;(all-values-true? (list true false true false))=false
;;(all-values-true? (list true true true false))=false

;;all-values-true?: list->boolean
;;GIVEN: a list of boolean values
;;RETURNS: true if all the values in the list are true else false.

(define (all-values-true? a-list)
  (cond
    [(empty? a-list) true]
    [else (and (first a-list)(all-values-true? (rest a-list)))]
    )
   
 )

;;TEST
(check-expect (all-values-true? (list true true true))true)
(check-expect (all-values-true? (list true false true false))false)
(check-expect (all-values-true? (list true true true false))false)
