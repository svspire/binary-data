;;;; -*- Mode: Lisp; Syntax: ANSI-Common-Lisp; Base: 10 -*-

(defsystem :binary-data
  :name "binary-data"
  :author "Peter Seibel <peter@gigamonkeys.com>"
  :version "1.0"
  :maintainer "Shannon Spires <svs@bearlanding.com>"
  :licence "BSD"
  :description "Code from Chapter 24 of Practical Common Lisp."
  :serial t
  :components ((:file "package")
               (:file "macro-utilities")
               (:file "binary-data")
               (:file "pathnames") ; optional for running example
               (:file "id3v2"))) ; optional for running example
        