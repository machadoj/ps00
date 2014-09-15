;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |24|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;;DATA DEFINITION

;;Mulitiplication of numbers in a list

;;STRUCTURE DEFINITION:
;;(list a-list)


;;CONSTRUCTOR TEMPLATE
;;(cons a-list empty)

;;INTERPRETATION
;;a-list: A list of numbers 

;;DESTRUCTOR TEMPLATES
;;: mult-fn->Product of all the numbers present in the list

;(define (mult-fn a-list)
;  (...
;      (*(first (mult-fn(rest a-list)))
;   )
;)

;;EXAMPLES
;;(mult-fn (list 2 3 4))= 24
;;(mult-fn (list 0 10 100 1000))=0
;;(mult-fn (list -2 -3 4 5))=120

;;mult-fn: list->number
;;GIVEN: a list of numbers
;;RETURNS: the product of all the numbers in the list.

(define (mult-fn a-list)
  (cond
    [(empty? a-list) 1]
    [else (* (first a-list)(mult-fn (rest a-list)))]
    )
   
 )

;;TEST
(check-expect (mult-fn (list 2 3 4))24)
(check-expect (mult-fn (list 0 10 100 1000))0)
(check-expect (mult-fn (list -2 -3 4 5))120)
