(defpackage :logans-numeric-partition
  (:use :cl)
  (:export :categorize-number :partition-numbers))

(in-package :logans-numeric-partition)

(defun categorize-number (lists number)   
  (if (oddp number) 
      (cons (cons number (car lists)) (cdr lists))
      (cons (car lists) (cons number (cdr lists)))))

(defun partition-numbers (numbers)
  (reduce #'categorize-number numbers :initial-value '(nil)))