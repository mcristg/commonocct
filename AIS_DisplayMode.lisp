(in-package :occt)

;; AIS_DisplayMode.hxx
;; Sets display modes other than neutral point ones,
;; for interactive objects. The possibilities include:
;; -   wireframe,
;; -   shaded,
;;enum AIS_DisplayMode

(defconstant +AIS_WireFrame+ 0)
(defconstant +AIS_Shaded+ 1)

(export '(+AIS_WireFrame+
          +AIS_Shaded+) 'occt)



