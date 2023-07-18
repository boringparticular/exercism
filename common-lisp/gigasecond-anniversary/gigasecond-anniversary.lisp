(defpackage :gigasecond-anniversary
  (:use :cl)
  (:export :from))
(in-package :gigasecond-anniversary)

(defun from (year month day hour minute second)
  (multiple-value-bind 
    (_second _minute _hour _day _month _year) 
    (decode-universal-time (+ (encode-universal-time second minute hour day month year) 1000000000))
    (list _year _month _day _hour _minute _second)))