(asdf:defsystem #:occt
  :description "Interface for the Open CASCADE Technology libraries."
  :author "mcristg mcristernag@gmail.com"
  :maintainer ""
  :version "7.8.1"
  :license "BSD"
  :depends-on (:qt)
  :components ((:file "package")
               (:file "releasable-objects")
               (:file "Aspect_VKey")               
               (:file "occt-enums")               
               (:file "Quantity_NameOfColor")               
               (:file "Quantity_TypeOfColor")                              
               (:file "OpenGl_ShaderProgramDumpLevel")
               (:file "Aspect_GridDrawMode")
               (:file "Aspect_GridType")
               (:file "Graphic3d_RenderTransparentMethod")
               (:file "Graphic3d_DiagnosticInfo")
               (:file "AIS_DisplayMode")
               (:file "Message_Gravity")
               (:file "STEPControl_StepModelType")
               (:file "full-load-smokeocct-lib")
               (:file "V3d_TypeOfOrientation")))
