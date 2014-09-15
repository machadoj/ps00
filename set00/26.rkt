;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |26|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;;DATA DEFINITION

;;A function that takes a list of Points and draws a solid blue circle with radius 10 at every Point in that list into a 300x300 scene

;;STRUCTURE DEFINITION:
;;(list a-list)


;;CONSTRUCTOR TEMPLATE
;;(cons a-list empty)

;;INTERPRETATION
;;a-list: A list of points where a solid blue circle of radius 10 will be formed.

;;DESTRUCTOR TEMPLATES
;;: draw-fn->Draws a solid blue circle at all the points mentioned in the list

;(define (draw-fn a-list)
;  (...
;     (place-image(circle 10 "solid" "blue")(make-point x y)(empty-scene 300 300)
;   )
;)

;;EXAMPLES
;;(draw-fn (list (make-point 10 20)(make-point 30 40)))
;;(draw-fn (list 0 10 100 1000))=0
;;(draw-fn (list -2 -3 4 5))=120

;;draw-fn: list->image
;;GIVEN: a list of points
;;RETURNS:An circles at the point mentioned in the list


(define (draw-fn a-list)
 (cond
   [(empty? a-list) (empty-scene 300 300)]
   [(and (= (posn-x(first a-list))300)(= (posn-x(first a-list))300))(draw-fn (rest a-list))]
  [else (place-image (circle 10 "solid" "blue") (posn-x (first a-list)) (posn-y (first a-list)) (draw-fn (rest a-list)) )]
 ))
  

;;TEST
(draw-fn (list (make-posn 300 300)(make-posn 30 40)(make-posn 50 60)))
