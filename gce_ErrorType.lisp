(in-package :occt)

;; Quantity_TypeOfColor.hxx

;; Indicates the outcome of a construction, i.e.
;; whether it is successful or not, as explained below.
;; gce_Done: Construction was successful.
;; gce_ConfusedPoints: Two points are coincident.
;; gce_NegativeRadius: Radius value is negative.
;; gce_ColinearPoints: Three points are collinear.
;; gce_IntersectionError: Intersection cannot be computed.
;; gce_NullAxis: Axis is undefined.
;; gce_NullAngle: Angle value is invalid (usually null).
;; gce_NullRadius: Radius is null.
;; gce_InvertAxis: Axis value is invalid.
;; gce_BadAngle: Angle value is invalid.
;; gce_InvertRadius: Radius value is incorrect
;; (usually with respect to another radius).
;; gce_NullFocusLength: Focal distance is null.
;; gce_NullVector: Vector is null.
;; gce_BadEquation: Coefficients are
;; incorrect (applies to the equation of a geometric object).

;; enum gce_ErrorType

(defconstant +gce_Done+ 0)
(defconstant +gce_ConfusedPoints+ 1)
(defconstant +gce_NegativeRadius+ 2)
(defconstant +gce_ColinearPoints+ 3)
(defconstant +gce_IntersectionError+ 4)
(defconstant +gce_NullAxis+ 5)
(defconstant +gce_NullAngle+ 6)
(defconstant +gce_NullRadius+ 7)
(defconstant +gce_InvertAxis+ 8)
(defconstant +gce_BadAngle+ 9)
(defconstant +gce_InvertRadius+ 10)
(defconstant +gce_NullFocusLength+ 11)
(defconstant +gce_NullVector+ 12)
(defconstant +gce_BadEquation+ 13)

(export '(+gce_Done+
          +gce_ConfusedPoints+
          +gce_NegativeRadius+ 
          +gce_ColinearPoints+
          +gce_IntersectionError+
          +gce_NullAxis+
          +gce_NullAngle+
          +gce_NullRadius+
          +gce_InvertAxis+
          +gce_BadAngle+
          +gce_InvertRadius+
          +gce_NullFocusLength+
          +gce_NullVector+
          +gce_BadEquation+) 'occt)

