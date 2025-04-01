(in-package #:common-lisp-user)

(defpackage #:bottle
  (:use #:common-lisp #:qt #:occt)
  (:export #:main))
  
(in-package #:bottle)

(defun init-occ-qt()
  (ensure-smoke :qtcore)
  (ensure-smoke :qtgui)
  (ensure-smoke :qtwidgets)
  (full-load-smokeocct-lib))

(init-occ-qt)
