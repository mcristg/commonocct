(asdf:defsystem #:occt
  :description "Interface for the Open CASCADE Technology libraries."
  :author "mcristg mcristernag@gmail.com"
  :maintainer ""
  :version "7.7.0"
  :license "BSD"
  :depends-on (:qt)
  :components ((:file "package")
               (:file "releasable-objects")
               (:file "Aspect_VKey")               
               (:file "occt-enums")
               (:file "full-load-smokeocct-lib")))
