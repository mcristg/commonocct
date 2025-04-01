; Based on An OpenCASCADE/Qt demo, updated for Qt6 and OpenCASCADE 7.5.0 
; from https://github.com/mschollmeier/occQt6

(asdf:defsystem #:bottle
  :description "bottle is a demo application about Qt and OpenCASCADE."
  :author "mcristg mcristernag@gmail.com"
  :maintainer ""
  :version "0.0"
  :license "LGPL 2.1"
  :depends-on (:occt :serapeum)
  :components ((:file "package")
               (:file "icons/svgrepo/bottle-svg")
               (:file "icons/orbit-svg")
               (:file "icons/lucide/info-svg")
               (:file "icons/lucide/mouse-pointer-svg")
               (:file "icons/lucide/move-svg")
               (:file "icons/lucide/reset-svg")
               (:file "icons/lucide/rotate-ccw-svg")
               (:file "icons/lucide/zoom-in-svg")
               (:file "make-bottle")
               (:file "hirespixmap")
               (:file "classes")
               (:file "customtoolbutton")
               (:file "emptyspacerwidget")
               (:file "occwidget")))
