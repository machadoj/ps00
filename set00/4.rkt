;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |4|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;tip: NonNegativeNumber Number[0.0, 1.0]-> Number
;GIVEN: the amount of the bill in dollars and the percentage of the tip
;RETURNS: the percentage of the bill in dollars
;EXAMPLES
;(tip 10 0.15)->1.5
;(tip 50 0.0.03)->1.5
;(tip 20 0.17)->3.4
;(tip -1 0.15)->"Enter a non negative bill or a tip between the range of 0.0 to 1.0"
;(tip 20 2)->"Enter a non negative bill or a tip between the range of 0.0 to 1.0"

(define (tip amount percentage)
 ( if (and (>= amount 0)(>= percentage 0)(<= percentage 1))
      (* amount percentage) "Enter a non negative bill or a tip between the range of 0.0 to 1.0"
  )
 )

(check-expect(tip 10 0.15) 1.5)
(check-expect(tip 50 0.03)1.5)
(check-expect(tip 20 0.17)3.4)
(check-expect(tip -1 0.15)"Enter a non negative bill or a tip between the range of 0.0 to 1.0")
(check-expect(tip 20 2)"Enter a non negative bill or a tip between the range of 0.0 to 1.0")