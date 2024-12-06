(in-package :occt)

;; STEPControl_StepModelType.hxx
;; enum STEPControl_StepModelType

(defconstant +STEPControl_AsIs+ 0)
(defconstant +STEPControl_ManifoldSolidBrep+ 1)
(defconstant +STEPControl_BrepWithVoids+ 2)
(defconstant +STEPControl_FacetedBrep+ 3)
(defconstant +STEPControl_FacetedBrepAndBrepWithVoids+ 4)
(defconstant +STEPControl_ShellBasedSurfaceModel+ 5)
(defconstant +STEPControl_GeometricCurveSet+ 6)
(defconstant +STEPControl_Hybrid+ 7)

(export '(+STEPControl_AsIs+
          +STEPControl_ManifoldSolidBrep+
          +STEPControl_BrepWithVoids+
          +STEPControl_FacetedBrep+
          +STEPControl_FacetedBrepAndBrepWithVoids+
          +STEPControl_ShellBasedSurfaceModel+
          +STEPControl_GeometricCurveSet+
          +STEPControl_Hybrid+) 'occt)


