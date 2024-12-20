(in-package :occt)

;; V3d_TypeOfOrientation.hxx
;; Determines the type of orientation as a combination of standard DX/DY/DZ directions.
;; This enumeration defines a model orientation looking towards the user's eye, which is an opposition to Camera main direction.
;; For example, V3d_Xneg defines +X Camera main direction.
;;
;; This enumeration defines only main Camera direction, so that the Camera up direction should be defined elsewhere for unambiguous Camera definition.
;; Open CASCADE does not force application using specific coordinate system, although Draw Harness and samples define +Z-up +Y-forward coordinate
;; system for camera view manipulation.
;; Therefore, this enumeration also defines V3d_TypeOfOrientation_Zup_* aliases defining front/back/left/top camera orientations for +Z-up convention
;; as well as V3d_TypeOfOrientation_Yup_* aliases for another commonly used in other systems +Y-up convention.
;; Applications using other coordinate system can define their own enumeration, when found suitable.
;; enum V3d_TypeOfOrientation

(defconstant +V3d_Xpos+ 0) ;;< (+Y+Z) view
(defconstant +V3d_Ypos+ 1) ;;< (-X+Z) view
(defconstant +V3d_Zpos+ 2) ;;< (+X+Y) view
(defconstant +V3d_Xneg+ 3) ;;< (-Y+Z) view
(defconstant +V3d_Yneg+ 4) ;;< (+X+Z) view
(defconstant +V3d_Zneg+ 5) ;;< (+X-Y) view

(defconstant +V3d_XposYpos+ 6)
(defconstant +V3d_XposZpos+ 7)
(defconstant +V3d_YposZpos+ 8)
(defconstant +V3d_XnegYneg+ 9)
(defconstant +V3d_XnegYpos+ 10)
(defconstant +V3d_XnegZneg+ 11)
(defconstant +V3d_XnegZpos+ 12)
(defconstant +V3d_YnegZneg+ 13)
(defconstant +V3d_YnegZpos+ 14)
(defconstant +V3d_XposYneg+ 15)
(defconstant +V3d_XposZneg+ 16)
(defconstant +V3d_YposZneg+ 17)
(defconstant +V3d_XposYposZpos+ 18)
(defconstant +V3d_XposYnegZpos+ 19)
(defconstant +V3d_XposYposZneg+ 20)
(defconstant +V3d_XnegYposZpos+ 21)
(defconstant +V3d_XposYnegZneg+ 22)
(defconstant +V3d_XnegYposZneg+ 23)
(defconstant +V3d_XnegYnegZpos+ 24)
(defconstant +V3d_XnegYnegZneg+ 25)

  ;; +Z-up +Y-forward convention
(defconstant +V3d_TypeOfOrientation_Zup_AxoLeft+  +V3d_XnegYnegZpos+)  ;;< +Z-up +Y-forward Left +Front+Top
(defconstant +V3d_TypeOfOrientation_Zup_AxoRight+ +V3d_XposYnegZpos+)  ;;< +Z-up +Y-forward Right+Front+Top
(defconstant +V3d_TypeOfOrientation_Zup_Front+    +V3d_Yneg+)          ;;< +Z-up +Y-forward Front  (+X+Z) view
(defconstant +V3d_TypeOfOrientation_Zup_Back+     +V3d_Ypos+)          ;;< +Z-up +Y-forward Back   (-X+Z) view
(defconstant +V3d_TypeOfOrientation_Zup_Top+      +V3d_Zpos+)          ;;< +Z-up +Y-forward Top    (+X+Y) view
(defconstant +V3d_TypeOfOrientation_Zup_Bottom+   +V3d_Zneg+)          ;;< +Z-up +Y-forward Bottom (+X-Y) view
(defconstant +V3d_TypeOfOrientation_Zup_Left+     +V3d_Xneg+)          ;;< +Z-up +Y-forward Left   (-Y+Z) view
(defconstant +V3d_TypeOfOrientation_Zup_Right+    +V3d_Xpos+)          ;;< +Z-up +Y-forward Right  (+Y+Z) view

  ;; +Y-up -Z-forward convention
(defconstant +V3d_TypeOfOrientation_Yup_AxoLeft+  +V3d_XnegYposZpos+)  ;;< +Y-up -Z-forward Left +Front+Top
(defconstant +V3d_TypeOfOrientation_Yup_AxoRight+ +V3d_XposYposZpos+)  ;;< +Y-up -Z-forward Right+Front+Top
(defconstant +V3d_TypeOfOrientation_Yup_Front+    +V3d_Zpos+)          ;;< +Y-up -Z-forward Front  (+X+Y) view
(defconstant +V3d_TypeOfOrientation_Yup_Back+     +V3d_Zneg+)          ;;< +Y-up -Z-forward Back   (-X+Y) view
(defconstant +V3d_TypeOfOrientation_Yup_Top+      +V3d_Ypos+)          ;;< +Y-up -Z-forward Top    (+X-Z) view
(defconstant +V3d_TypeOfOrientation_Yup_Bottom+   +V3d_Yneg+)          ;;< +Y-up -Z-forward Bottom (-X-Z) view
(defconstant +V3d_TypeOfOrientation_Yup_Left+     +V3d_Xpos+)          ;;< +Y-up -Z-forward Left   (-Z+Y) view
(defconstant +V3d_TypeOfOrientation_Yup_Right+    +V3d_Xneg+)          ;;< +Y-up -Z-forward Right  (+Z+Y) view

(export '(+V3d_Xpos+
          +V3d_Ypos+
          +V3d_Zpos+
          +V3d_Xneg+
          +V3d_Yneg+
          +V3d_Zneg+
          +V3d_XposYpos+
          +V3d_XposZpos+
          +V3d_YposZpos+
          +V3d_XnegYneg+
          +V3d_XnegYpos+
          +V3d_XnegZneg+
          +V3d_XnegZpos+
          +V3d_YnegZneg+
          +V3d_YnegZpos+
          +V3d_XposYneg+ 
          +V3d_XposZneg+
          +V3d_YposZneg+
          +V3d_XposYposZpos+
          +V3d_XposYnegZpos+
          +V3d_XposYposZneg+
          +V3d_XnegYposZpos+
          +V3d_XposYnegZneg+
          +V3d_XnegYposZneg+
          +V3d_XnegYnegZpos+
          +V3d_XnegYnegZneg+
          +V3d_TypeOfOrientation_Zup_AxoLeft+
          +V3d_TypeOfOrientation_Zup_AxoRight+
          +V3d_TypeOfOrientation_Zup_Front+
          +V3d_TypeOfOrientation_Zup_Back+
          +V3d_TypeOfOrientation_Zup_Top+
          +V3d_TypeOfOrientation_Zup_Bottom+
          +V3d_TypeOfOrientation_Zup_Left+
          +V3d_TypeOfOrientation_Zup_Right+
          +V3d_TypeOfOrientation_Yup_AxoLeft+
          +V3d_TypeOfOrientation_Yup_AxoRight+
          +V3d_TypeOfOrientation_Yup_Front+
          +V3d_TypeOfOrientation_Yup_Back+
          +V3d_TypeOfOrientation_Yup_Top+
          +V3d_TypeOfOrientation_Yup_Bottom+
          +V3d_TypeOfOrientation_Yup_Left+
          +V3d_TypeOfOrientation_Yup_Right+) 'occt)
