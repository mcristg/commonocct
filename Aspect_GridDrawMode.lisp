(in-package :occt)

;; Aspect_GridDrawMode.hxx
;; Defines the grid draw mode. The grid may be drawn
;; by using lines or points.
;; enum Aspect_GridDrawMode
(defconstant +Aspect_GDM_Lines+ 0)
(defconstant +Aspect_GDM_Points+ 1)
(defconstant +Aspect_GDM_None+ 2)

(export '(+Aspect_GDM_Lines+ +Aspect_GDM_Points+ +Aspect_GDM_None+) 'occt)
