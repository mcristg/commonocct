(asdf:defsystem #:occt
  :description "Interface for the Open CASCADE Technology libraries."
  :author "mcristg mcristernag@gmail.com"
  :maintainer ""
  :version "7.8.1"
  :license "BSD"
  :depends-on (:qt)
  :components ((:file "package")
               (:file "AIS_DisplayMode")
               (:file "AIS_MouseGesture")
               (:file "AIS_SelectionScheme")
               (:file "Aspect_GridDrawMode")
               (:file "Aspect_GridType")
               (:file "Aspect_TypeOfTriedronPosition")
               (:file "Aspect_VKey")
               (:file "full-load-smokeocct-lib")
               (:file "Graphic3d_DiagnosticInfo")
               (:file "Graphic3d_RenderTransparentMethod")
               (:file "Message_Gravity")               
               (:file "occt-enums")                              
               (:file "OpenGl_ShaderProgramDumpLevel")               
               (:file "Quantity_NameOfColor")               
               (:file "Quantity_TypeOfColor")
               (:file "releasable-objects")
               (:file "STEPControl_StepModelType")
               (:file "V3d_TypeOfOrientation")))
