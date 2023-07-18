(defpackage :lillys-lasagna
  (:use :cl)
  (:export :expected-time-in-oven
           :remaining-minutes-in-oven
           :preparation-time-in-minutes
           :elapsed-time-in-minutes))

(in-package :lillys-lasagna)

;; Define function expected-time-in-oven
(defun expected-time-in-oven () 
  "Returns the expected time in oven" 
  337)

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (minutes) 
  "Calculates the remaining time in oven" 
  (- (expected-time-in-oven) minutes))

;; Define function preparation-time-in-minutes
(defun preparation-time-in-minutes (layers) 
  "Calculates the preparation time of all layers" 
  (* layers 19))

;; Define function elapsed-time-in-minutes
(defun elapsed-time-in-minutes (layers time-spent-in-oven) 
  "Calculates the time spent cooking" 
  (+ (preparation-time-in-minutes layers) time-spent-in-oven))