(defpackage :lillys-lasagna-leftovers
  (:use :cl)
  (:export
   :preparation-time
   :remaining-minutes-in-oven
   :split-leftovers))

(in-package :lillys-lasagna-leftovers)

;; Define function preparation-time
(defun preparation-time (&rest layers) 
  (* 19 (length layers)))

;; Define function remaining-minutes-in-oven
(defun remaining-minutes-in-oven (&optional (time-modifier :normal))
  (case time-modifier
    (:normal 337)
    (:shorter 237)
    (:very-short 137)
    (:longer 437)
    (:very-long 537)
    ((nil) 0)))

;; Define function split-leftovers
(defun split-leftovers (&key (weight nil weight-supplied-p) (human 10) (alien 10))
  (cond
    (weight (- weight human alien))
    (weight-supplied-p :looks-like-someone-was-hungry )
    (t :just-split-it)))