(in-package :occt)
(named-readtables:in-readtable :qt)

;; https://dev.opencascade.org/doc/refman/html/functions_enum.html


;;Aspect_VKeyFlags.hxx

;; Key modifier, for combining with general key from Aspect_VKey.
(defconstant +Aspect_VKeyFlags_NONE+ 0)
;; reserve first 8 bits to combine value with Aspect_VKey
(defconstant +Aspect_VKeyFlags_SHIFT+ (ash 1 8)  ; Aspect_VKey_Shift
(defconstant +Aspect_VKeyFlags_CTRL+  (ash 1 9)  ; Aspect_VKey_Control
(defconstant +Aspect_VKeyFlags_ALT+   (ash 1 10) ; Aspect_VKey_Alt
(defconstant +Aspect_VKeyFlags_MENU+  (ash 1 11) ; Aspect_VKey_Menu
(defconstant +Aspect_VKeyFlags_META+  (ash 1 12) ; Aspect_VKey_Meta

(defconstant +Aspect_VKeyFlags_ALL+ (logior +Aspect_VKeyFlags_SHIFT+ 
                                            +Aspect_VKeyFlags_CTRL+ 
                                            +Aspect_VKeyFlags_ALT+
                                            +Aspect_VKeyFlags_MENU+
                                            +Aspect_VKeyFlags_META+)
 
;; Mouse buttons, for combining with Aspect_VKey and Aspect_VKeyFlags.                                            
;; Mouse button bitmask
(defconstant +Aspect_VKeyMouse_NONE+ 0)       ; no buttons

(defconstant +Aspect_VKeyMouse_LeftButton+   (ash 1 13) ; mouse left   button
(defconstant +Aspect_VKeyMouse_MiddleButton+ (ash 1 14) ; mouse middle button (scroll)
(defconstant +Aspect_VKeyMouse_RightButton+  (ash 1 15) ; mouse right  button

(defconstant +Aspect_VKeyMouse_MainButtons+ (logior +Aspect_VKeyMouse_LeftButton+ 
                                                    +Aspect_VKeyMouse_MiddleButton+ 
                                                    +Aspect_VKeyMouse_RightButton+)

;; BinLDrivers_Marker.hxx
;; enum BinLDrivers_Marker
(defconstant +BinLDrivers_ENDATTRLIST+ -1)   ; the end of attributes list
(defconstant +BinLDrivers_ENDLABEL+    -2)    ; the end of label

;; BOPAlgo_GlueEnum.hxx
;;enum BOPAlgo_GlueEnum
(defconstant +BOPAlgo_GlueOff+   0)
(defconstant +BOPAlgo_GlueShift+ 1)
(defconstant +BOPAlgo_GlueFull+  2)

;; TDataStd_RealEnum.hxx
;; enum TDataStd_RealEnum
(defconstant +TDataStd_SCALAR+  0)
(defconstant +TDataStd_LENGTH+  1)
(defconstant +TDataStd_ANGULAR+ 2)

;; TDataXtd_ConstraintEnum.hxx
;; enum TDataXtd_ConstraintEnum
(defconstant +TDataXtd_RADIUS+          0)
(defconstant +TDataXtd_DIAMETER+        1)
(defconstant +TDataXtd_MINOR_RADIUS+    2)
(defconstant +TDataXtd_MAJOR_RADIUS+    3)
(defconstant +TDataXtd_TANGENT+         4)
(defconstant +TDataXtd_PARALLEL+        5)
(defconstant +TDataXtd_PERPENDICULAR+   6)
(defconstant +TDataXtd_CONCENTRIC+      7)
(defconstant +TDataXtd_COINCIDENT+      8)
(defconstant +TDataXtd_DISTANCE+        9)
(defconstant +TDataXtd_ANGLE+          10)
(defconstant +TDataXtd_EQUAL_RADIUS+   11)
(defconstant +TDataXtd_SYMMETRY+       12)
(defconstant +TDataXtd_MIDPOINT+       13)
(defconstant +TDataXtd_EQUAL_DISTANCE+ 14)
(defconstant +TDataXtd_FIX+            15)
(defconstant +TDataXtd_RIGID+          16)
(defconstant +TDataXtd_FROM+           17)
(defconstant +TDataXtd_AXIS+           18)
(defconstant +TDataXtd_MATE+           19)
(defconstant +TDataXtd_ALIGN_FACES+    20)
(defconstant +TDataXtd_ALIGN_AXES+     21)
(defconstant +TDataXtd_AXES_ANGLE+     22)
(defconstant +TDataXtd_FACES_ANGLE+    23)
(defconstant +TDataXtd_ROUND+          24)
(defconstant +TDataXtd_OFFSET+         25)

;; TDataXtd_GeometryEnum.hxx
;; enum TDataXtd_GeometryEnum
(defconstant +TDataXtd_ANY_GEOM+ 0)
(defconstant +TDataXtd_POINT+    1)
(defconstant +TDataXtd_LINE+     2)
(defconstant +TDataXtd_CIRCLE+   3)
(defconstant +TDataXtd_ELLIPSE+  4)
(defconstant +TDataXtd_SPLINE+   5)
(defconstant +TDataXtd_PLANE+    6)
(defconstant +TDataXtd_CYLINDER+ 7)

;; TopAbs_ShapeEnum.hxx
;;enum TopAbs_ShapeEnum
(defconstant +TopAbs_COMPOUND+  0)
(defconstant +TopAbs_COMPSOLID+ 1)
(defconstant +TopAbs_SOLID+     2)
(defconstant +TopAbs_SHELL+     3)
(defconstant +TopAbs_FACE+      4)
(defconstant +TopAbs_WIRE+      5)
(defconstant +TopAbs_EDGE+      6)
(defconstant +TopAbs_VERTEX+    7)
(defconstant +TopAbs_SHAPE+     8)

;; TopOpeBRepBuild_LoopEnum.hxx
;; enum TopOpeBRepBuild_LoopEnum
(defconstant +TopOpeBRepBuild_ANYLOOP+  0)
(defconstant +TopOpeBRepBuild_BOUNDARY+ 1)
(defconstant +TopOpeBRepBuild_BLOCK+    2)

;; StepFEA_EnumeratedDegreeOfFreedom.hxx
;; enum StepFEA_EnumeratedDegreeOfFreedom
(defconstant +StepFEA_XTranslation+ 0)
(defconstant +StepFEA_YTranslation+ 1)
(defconstant +StepFEA_ZTranslation+ 2)
(defconstant +StepFEA_XRotation+    3)
(defconstant +StepFEA_YRotation+    4)
(defconstant +StepFEA_ZRotation+    5)
(defconstant +StepFEA_Warp+         6)

;; Vrml_SFImageNumber.hxx
;; enum Vrml_SFImageNumber
(defconstant +Vrml_NULL+  0)
(defconstant +Vrml_ONE+   1)
(defconstant +Vrml_TWO+   2)
(defconstant +Vrml_THREE+ 3)
(defconstant +Vrml_FOUR+  4)


