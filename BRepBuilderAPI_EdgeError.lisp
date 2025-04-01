(in-package :occt)

;; BRepBuilderAPI_EdgeError.hxx
;; Indicates the outcome of the
;; construction of an edge, i.e. whether it has been successful or
;; not, as explained below:
;; -      BRepBuilderAPI_EdgeDone No    error occurred; The edge is
;; correctly built.
;; -      BRepBuilderAPI_PointProjectionFailed No parameters were given but
;; the projection of the 3D points on the curve failed. This
;; happens when the point distance to the curve is greater than
;; the precision value.
;; -      BRepBuilderAPI_ParameterOutOfRange
;; The given parameters are not in the parametric range
;; C->FirstParameter(), C->LastParameter()
;; -      BRepBuilderAPI_DifferentPointsOnClosedCurve
;; The two vertices or points are the extremities of a closed
;; curve but have different locations.
;; -      BRepBuilderAPI_PointWithInfiniteParameter
;; A finite coordinate point was associated with an infinite
;; parameter (see the Precision package for a definition of    infinite values).
;; -      BRepBuilderAPI_DifferentsPointAndParameter
;; The distance between the 3D point and the point evaluated
;; on the curve with the parameter is greater than the precision.
;; -      BRepBuilderAPI_LineThroughIdenticPoints
;; Two identical points were given to define a line (construction
;; of an edge without curve); gp::Resolution is used for the    confusion test.
;; enum BRepBuilderAPI_EdgeError

(defconstant +BRepBuilderAPI_EdgeDone+ 0)
(defconstant +BRepBuilderAPI_PointProjectionFailed+ 1)
(defconstant +BRepBuilderAPI_ParameterOutOfRange+ 2)
(defconstant +BRepBuilderAPI_DifferentPointsOnClosedCurve+ 3)
(defconstant +BRepBuilderAPI_PointWithInfiniteParameter+ 4)
(defconstant +BRepBuilderAPI_DifferentsPointAndParameter+ 5)
(defconstant +BRepBuilderAPI_LineThroughIdenticPoints+ 6)

(export '(+BRepBuilderAPI_EdgeDone+
          +BRepBuilderAPI_PointProjectionFailed+
          +BRepBuilderAPI_ParameterOutOfRange+
          +BRepBuilderAPI_DifferentPointsOnClosedCurve+
          +BRepBuilderAPI_PointWithInfiniteParameter+
          +BRepBuilderAPI_DifferentsPointAndParameter+
          +BRepBuilderAPI_LineThroughIdenticPoints+) 'occt)
