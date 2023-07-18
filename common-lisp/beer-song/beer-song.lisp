(defpackage :beer-song
  (:use :cl)
  (:export :verse :sing))

(in-package :beer-song)
(defun verse (n)
  "Returns a string verse for a given number."
  (cond 
    ((= n 0) (format nil "No more bottles of beer on the wall, no more bottles of beer.~&Go to the store and buy some more, 99 bottles of beer on the wall.~&"))
    ((= n 1) (format nil "1 bottle of beer on the wall, 1 bottle of beer.~&Take it down and pass it around, no more bottles of beer on the wall.~&"))
    ((= n 2) (format nil "2 bottles of beer on the wall, 2 bottles of beer.~&Take one down and pass it around, 1 bottle of beer on the wall.~&"))
    (t (format nil "~D bottles of beer on the wall, ~D bottles of beer.~&Take one down and pass it around, ~D bottles of beer on the wall.~&" n n (- n 1)))))

(defun sing (start &optional (end 0))
  "Returns a string of verses for a given range of numbers."
  (cond
    ((< start end) "")
    ((>= start 0) (concatenate 'string (verse start) (format nil "~%") (sing (- start 1) end)))))
