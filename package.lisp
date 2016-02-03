(in-package :cl-user)

(defpackage :binary-data
  (:use :cl)
  (:nicknames "BD")
  (:export :define-binary-class
           :define-tagged-binary-class
           :define-binary-type
           :read-value
           :write-value
           :*in-progress-objects*
           :parent-of-type
           :current-binary-object
           :+null+))