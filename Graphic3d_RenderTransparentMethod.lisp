(in-package :occt)

;; Graphic3d_RenderTransparentMethod.hxx
;; Enumerates transparency rendering methods supported by rasterization mode.
;; enum Graphic3d_RenderTransparentMethod

(defconstant +Graphic3d_RTM_BLEND_UNORDERED+ 0)   ; Basic blend transparency with non-commuting blend operator without sorting
(defconstant +Graphic3d_RTM_BLEND_OIT+ 1)         ; Weighted Blended Order-Independent Transparency with depth weight factor
(defconstant +Graphic3d_RTM_DEPTH_PEELING_OIT+ 2) ; Depth Peeling with specified number of depth layers

(export '(+Graphic3d_RTM_BLEND_UNORDERED+
          +Graphic3d_RTM_BLEND_OIT+
          +Graphic3d_RTM_DEPTH_PEELING_OIT+) 'occt)
