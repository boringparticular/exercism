(defpackage :pizza-pi
  (:use :cl)
  (:export :dough-calculator :pizzas-per-cube
           :size-from-sauce :fair-share-p))

(in-package :pizza-pi)

(defun dough-calculator (pizzas diameter)
  (round (* pizzas (+ (/ (* 45 PI diameter) 20) 200))))

(defun size-from-sauce (sauce)
  (sqrt (/ (* 40 sauce) (* 3 PI))))

(defun pizzas-per-cube (cube-size diameter)
  (floor (/ (* 2 (expt cube-size 3)) (* 3 PI (expt diameter 2)))))

(defun fair-share-p (pizzas friends)
  (= (mod (/ (* pizzas 8) friends) 2) 0))