(in-package :occt)

;; Graphic3d_RenderingMode.hxx

;; Describes rendering modes.
;; - RM_RASTERIZATION: enables OpenGL rasterization mode;
;; - RM_RAYTRACING: enables GPU ray-tracing mode.
;; enum Graphic3d_RenderingMode

(defconstant +Graphic3d_RM_RASTERIZATION+ 0)
(defconstant +Graphic3d_RM_RAYTRACING+ 1)

(export '(+Graphic3d_RM_RASTERIZATION+
          +Graphic3d_RM_RAYTRACING+) 'occt)
