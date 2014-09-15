;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |15|) (read-case-sensitive #t) (teachpacks ((lib "image.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "image.rkt" "teachpack" "2htdp")))))
(define-struct student(id name major))
;A student is a (make-student Number String String).
;It represents the details of a student.
;Interpretation:
    ;;   id = An unique number assigned to a student
    ;;   name=the name beloning to a student represented by a string
    ;;   major = The major a student is studying represented by a string
(make-student 1000 "Joy" "Computer Science")
