(in-package :occt)

;; Aspect_TypeOfTriedronPosition.hxx

;; Definition of the Trihedron position in the views.
;; It is defined as a bitmask to simplify handling vertical and horizontal alignment independently.
;; enum Aspect_TypeOfTriedronPosition

(defconstant +Aspect_TOTP_CENTER+      #x0000)             ;< at the center of the view
(defconstant +Aspect_TOTP_TOP+         #x0001)             ;< at the middle of the top    side
(defconstant +Aspect_TOTP_BOTTOM+      #x0002)             ;< at the middle of the bottom side
(defconstant +Aspect_TOTP_LEFT+        #x0004)             ;< at the middle of the left   side
(defconstant +Aspect_TOTP_RIGHT+       #x0008)             ;< at the middle of the right  side
(defconstant +Aspect_TOTP_LEFT_LOWER+ (logior +Aspect_TOTP_BOTTOM+ Aspect_TOTP_LEFT))     ;< at the left lower corner
(defconstant +Aspect_TOTP_LEFT_UPPER+ (logior +Aspect_TOTP_TOP+ +Aspect_TOTP_LEFT+))      ;< at the left upper corner
(defconstant +Aspect_TOTP_RIGHT_LOWER+ (logior +Aspect_TOTP_BOTTOM+ +Aspect_TOTP_RIGHT+)) ;< at the right lower corner
(defconstant +Aspect_TOTP_RIGHT_UPPER+ (logior +Aspect_TOTP_TOP+ +Aspect_TOTP_RIGHT+))    ;< at the right upper corner

(export '(+Aspect_TOTP_CENTER+
          +Aspect_TOTP_TOP+
          +Aspect_TOTP_BOTTOM+
          +Aspect_TOTP_LEFT+
          +Aspect_TOTP_RIGHT+
          +Aspect_TOTP_LEFT_LOWER+
          +Aspect_TOTP_LEFT_UPPER+
          +Aspect_TOTP_RIGHT_LOWER+
          +Aspect_TOTP_RIGHT_UPPER+) 'occt)
