#|
This code is from Chapter 24 of Peter Siebel's book Practical Common Lisp.
http://www.gigamonkeys.com/book/practical-parsing-binary-files.html

I've bagged the asd files and moved dependencies all here to this one
directory, because
a) I don't care to load all the code from Siebel's book, thank you very much, and
b) ASDF *never* works (TM) and when it fails, I don't know how to debug it
(nobody else does either) so I'm using my own loader mechanism.

I've also renamed Siebel's package names to something reasonable.

-SVS
11-Mar-2014 13:30:48
|#

(in-package :cl-user)

(eval-when (:compile-toplevel :load-toplevel :execute)
  (unless (find-package :binary-data)
    (defpackage :binary-data
      (:use "CL" "CCL")
      (:nicknames "BD")
      (:export :define-binary-class
               :define-tagged-binary-class
               :define-binary-type
               :read-value
               :write-value
               :*in-progress-objects*
               :parent-of-type
               :current-binary-object
               :+null+))))

(aisl:load-files '("macro-utilities"
                   "binary-data"
                   "pathnames" ; optional for running example
                   "id3v2" ; optional for running example
                   ))
