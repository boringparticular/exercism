(defpackage :lucys-magnificent-mapper
  (:use :cl)
  (:export :make-magnificent-maybe :only-the-best))

(in-package :lucys-magnificent-mapper)

(defun make-magnificent-maybe (function numbers)
  (mapcar function numbers))

(defun only-the-best (function numbers) 
  (remove 1 (remove-if function numbers)))
