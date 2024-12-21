(in-package :occt)

;; AIS_MouseGesture.hxx

;; Mouse gesture - only one can be active at one moment.
;; enum AIS_MouseGesture

(defconstant +AIS_MouseGesture_NONE+ 0)            ;;< no active gesture

(defconstant +AIS_MouseGesture_SelectRectangle+ 1) ;;< rectangular selection;
                                                   ;;  press button to start, move mouse to define rectangle, release to finish
(defconstant +AIS_MouseGesture_SelectLasso+ 2)     ;;< polygonal selection;
                                                   ;;  press button to start, move mouse to define polygonal path, release to finish

(defconstant +AIS_MouseGesture_Zoom+ 3)            ;;< view zoom gesture;
                                                   ;;  move mouse left to zoom-out, and to the right to zoom-in
(defconstant +AIS_MouseGesture_ZoomWindow+ 4)      ;;< view zoom by window gesture;
                                                   ;;  press button to start, move mouse to define rectangle, release to finish
(defconstant +AIS_MouseGesture_Pan+ 5)             ;;< view panning gesture
(defconstant +AIS_MouseGesture_RotateOrbit+ 6)     ;;< orbit rotation gesture
(defconstant +AIS_MouseGesture_RotateView+ 7)      ;;< view  rotation gesture
(defconstant +AIS_MouseGesture_Drag+ 8)            ;;< object dragging;
                                                   ;;  press button to start, move mouse to define rectangle, release to finish

(export '(+AIS_MouseGesture_NONE+
          +AIS_MouseGesture_SelectRectangle+
          +AIS_MouseGesture_SelectLasso+
          +AIS_MouseGesture_Zoom+
          +AIS_MouseGesture_ZoomWindow+
          +AIS_MouseGesture_Pan+
          +AIS_MouseGesture_RotateOrbit+
          +AIS_MouseGesture_RotateView+
          +AIS_MouseGesture_Drag+) 'occt)
