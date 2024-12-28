(in-package :occt)

;; V3d_TypeOfVisualization.hxx
;; Determines the type of visualization in the view, either
;; WIREFRAME or ZBUFFER (shading).
;; enum V3d_TypeOfVisualization

(defconstant +V3d_WIREFRAME+ 0)
(defconstant +V3d_ZBUFFER+ 1)

(export '(+V3d_WIREFRAME+
          +V3d_ZBUFFER+) 'occt)
