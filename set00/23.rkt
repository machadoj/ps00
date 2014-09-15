;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |23|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
;;DATA DEFINITIONS

;;An expression whose value is a list of 5 booleans, alternating between true and false, starting with true

;;STRUCTURE DEFINITION
;;(list true false true false true)

;;CONSTRUCTOR TEMPLATE
;;(cons true (cons false (cons true (cons false (cons true empty)))))

;;RETURNS: A list of boolean values alternating between true and false, starting with true.

;;STRATEGY

(cons true (cons false (cons true (cons false (cons true empty)))))