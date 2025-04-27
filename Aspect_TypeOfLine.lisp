(in-package :occt)

;; Definition of line types
;; enum Aspect_TypeOfLine
(defconstant +Aspect_TOL_EMPTY+ -1)      ;< hidden
(defconstant +Aspect_TOL_SOLID+ 0)       ;< continuous
(defconstant +Aspect_TOL_DASH+ 1)        ;< dashed 2.0,1.0 (MM)
(defconstant +Aspect_TOL_DOT+ 2)         ;< dotted 0.2,0.5 (MM)
(defconstant +Aspect_TOL_DOTDASH+ 3)     ;< mixed  10.0,1.0,2.0,1.0 (MM)
(defconstant +Aspect_TOL_USERDEFINED+ 4) ;< defined by Users

(export '(+Aspect_TOL_EMPTY+
          +Aspect_TOL_SOLID+
          +Aspect_TOL_DASH+
          +Aspect_TOL_DOT+
          +Aspect_TOL_DOTDASH+
          +Aspect_TOL_USERDEFINED+) 'occt)
